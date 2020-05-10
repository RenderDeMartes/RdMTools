from maya import cmds

'''
4/08/18
RdMParentObject Shout
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMParentObjectShout
reload (RdMParentObjectShout)
'''

if cmds.window ("ParentObject", exists = True):
    cmds.deleteUI ("ParentObject")

def ParentGenerator (*args):
    #Definir Elementos base
    Seleccion = cmds.ls (sl = True)
    
    if len (Seleccion) < 2:
        cmds.warning ('Seleccione al menos 2 objetos antes de continuar')
        
    else:
        
        Controlador = Seleccion[0]
        print Controlador
        Objeto = Seleccion[1]
        print Objeto
    
        #Control de ojeto Nuevo
        radio = cmds.floatSliderGrp (RadioControlador, q = True, value = 2)
        ControlObjeto = cmds.circle(n= str(Objeto) + '_CC', r = radio)
        cmds.setAttr (str(ControlObjeto[0])+'.overrideEnabled', 1)
        cmds.setAttr (str(ControlObjeto[0])+'.overrideColor', 14)
        Parent01 = cmds.parentConstraint (Objeto, ControlObjeto, mo = False)
        cmds.delete (Parent01)
        cmds.parentConstraint (ControlObjeto, Objeto)
        
        #MoverObjeto a posicion del control
        Parent03 = cmds.parentConstraint (Controlador, ControlObjeto, mo = False)
        cmds.delete(Parent03)
        cmds.makeIdentity (ControlObjeto, apply = True, t = 1, r =1)
        
        #AtributoNuevo
        cmds.select(Controlador)
        AttributoNuevo = cmds.addAttr(ln = str(Objeto) + '_ParentSwitch', at = 'double', min = 0, max = 10)
        cmds.setAttr (str(Controlador)+'.'+ str(Objeto) + '_ParentSwitch', e = True, keyable = True)
    
        #DefinirParent de Controlador a Objeto
        GrupoControl = cmds.group(ControlObjeto, n = str(ControlObjeto[0])+'_GRP')
        ParentFinal = cmds.parentConstraint(Controlador, GrupoControl)
        print ParentFinal[0]
    
        #DummyLocator
        DummyLoc = cmds.spaceLocator(n = 'dummy_' + str(Objeto))
        ParentDummy = cmds.parentConstraint(DummyLoc,GrupoControl, mo = True)
        cmds.setAttr(ParentDummy[0]+'.'+str(DummyLoc[0])+'W1', 0)
        cmds.setAttr (str(DummyLoc[0]) + '.visibility',0)
        
        #SetDrivenKey

        cmds.setDrivenKeyframe(ParentFinal[0]+'.'+str(Controlador)+'W0', cd = str(Controlador)+'.'+ str(Objeto) + '_ParentSwitch', dv =10 , v=1, ib= True)
        cmds.setDrivenKeyframe(ParentFinal[0]+'.'+str(Controlador)+'W0', cd = str(Controlador)+'.'+ str(Objeto) + '_ParentSwitch', dv =0 , v=0, ib= True)
       
        cmds.setDrivenKeyframe(ParentDummy[0]+'.'+str(DummyLoc[0])+'W1', cd = str(Controlador)+'.'+ str(Objeto) + '_ParentSwitch', dv =0 , v=1, ib= True)
        cmds.setDrivenKeyframe(ParentDummy[0]+'.'+str(DummyLoc[0])+'W1', cd = str(Controlador)+'.'+ str(Objeto) + '_ParentSwitch', dv =10 , v=0, ib= True)
         
        
        #AgruparObjeto
        cmds.setAttr (str(Controlador)+'.'+ str(Objeto) + '_ParentSwitch', 10)
        cmds.group(GrupoControl,Objeto, DummyLoc, n = str(Objeto)+'_Parent_GRP' )
     
#Window
cmds.window( 'ParentObject', width=250, title= 'ParentObject Shout' )
cmds.columnLayout( adjustableColumn=True )
cmds.separator (h = 20)
cmds.text('Select controller and then the object to parent')
cmds.separator (h = 20)
RadioControlador = cmds.floatSliderGrp (l = 'Radio:', min = 1 , max = 30, field = True, v = 5)
cmds.button (l = 'Parent To Object', c = ParentGenerator)
cmds.separator (h = 10)
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.separator (h = 20)
cmds.showWindow('ParentObject')      
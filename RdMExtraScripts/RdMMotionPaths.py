#!/usr/bin/env python
# -*- coding: utf-8 -*- 
'''

25/6/18
RdMAnimacion v:6.4
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMMotionPaths
reload (RdMMotionPaths)

'''

from maya import cmds 

if cmds.window ('Animacion6', exists = True):
    cmds.deleteUI ('Animacion6')
    

def Ani6 (*args)  :     

    jointName = cmds.textFieldGrp (Name, q = True, text = True)
    Radius = cmds.floatSliderGrp (RadioControlador, q = True, value = 5)
    JointAmount = cmds.intSliderGrp (jointsNum, q = True, value = 5)
    
    #Check if anoter motion path with the same name exist
    
    curveSelected =cmds.ls(sl=True, o=True, dag=True, s=True)
    print curveSelected
    
    
    if cmds.objExists ('motionPath1'):
        cmds.rename ('motionPath1','motionPath01')
        
    if cmds.objExists ('motionPath2'):
        cmds.rename ('motionPath2','motionPath02')
        
    if cmds.objExists ('motionPath3'):
        cmds.rename ('motionPath3','motionPath03')
    
    #Locators, joint, circle, joint , parent -r -s
    
    currentValue = cmds.optionMenu(polygonSelectMenu, query=True, value=True)

    for X in range (1, JointAmount + 1):
        
        cmds.spaceLocator (n = jointName + str (X) + '_LOC')
        cmds.setAttr (jointName + str (X) + '_LOC.inheritsTransform', 0)
        cmds.joint (n= jointName + str (X) + '_JointOffset')
        cmds.joint(e= True, zso=True, oj= "yxz", sao = "zup", ch=True) 
        cmds.joint (n= jointName + str (X) + '_JointControl')
        cmds.joint(e= True, zso=True, oj= "yxz", sao = "zup", ch=True) 
        if currentValue == 'Circle': 
            cmds.circle (n = jointName + str (X) + 'CC' ,r = Radius, nr=(1, 0, 0))
        elif currentValue == 'NurbsSphere': 
            cmds.sphere (n = jointName + str (X) + 'CC' ,r = Radius/3, nsp = 4, ch = True,p = (0,0,0), ax = (0,1,0))
        cmds.parent (jointName + str (X)+ 'CCShape', jointName+ str (X)+ '_JointControl' ,r = True, s =   True)
        cmds.delete (jointName +str (X) + 'CC')    
        cmds.pathAnimation (jointName + str (X) + '_LOC', str(curveSelected[0]))    
        cmds.cutKey( 'motionPath'+ str (X)+'.uValue' , time=(0,2), option="keys" )
        cmds.setAttr ('motionPath'+ str (X) + '.uValue', (X-1) * (JointAmount/X))
    
    #Color de los controles
    
    ColorRojo = cmds.checkBox(RojoCheck, q = True, v = True)
    
    if (ColorRojo):      
        if currentValue == 'Circle':   
            for R in range (1,JointAmount+1):
                cmds.setAttr (jointName + str(R) + 'CCShape.overrideEnabled', True) 
                cmds.setAttr (str (jointName) + str (R) + 'CCShape.overrideColor', 13)
                        
        elif currentValue == 'NurbsSphere': 
            for X in range (1, JointAmount + 1):  
                cmds.select (clear = True)                
                
                if cmds.objExists('RojoMatScript'):
                    cmds.select (jointName + str (X) + 'CCShape')
                    cmds.sets (e= True, forceElement = 'RojoMatScriptSG1')    
                    
                else:
                    shader = cmds.shadingNode ('lambert', asShader = True, n = 'RojoMatScript') 
                    shading_group= cmds.sets(renderable=True,noSurfaceShader=True,empty=True, n = 'RojoMatScriptSG1') 
                    cmds.connectAttr('%s.outColor' %shader ,'%s.surfaceShader' %shading_group)   
                    cmds.setAttr ('RojoMatScript.color', 1.0, 0.0, 0.0, type = 'double3') 
                    cmds.select (jointName + str (X) + 'CCShape')              
                    cmds.sets (e= True, forceElement = 'RojoMatScriptSG1')   

    ColorAzul = cmds.checkBox(AzulCheck, q = True, v = True)
    
    if (ColorAzul):      
        if currentValue == 'Circle':   
            for R in range (1,JointAmount+1):
                cmds.setAttr (jointName + str(R) + 'CCShape.overrideEnabled', True) 
                cmds.setAttr (str (jointName) + str (R) + 'CCShape.overrideColor', 6)
                        
        elif currentValue == 'NurbsSphere':   
            for X in range (1, JointAmount + 1):  
                cmds.select (clear = True)                
                
                if cmds.objExists('AzulMatScript'):
                    cmds.select (jointName + str (X) + 'CCShape')
                    cmds.sets (e= True, forceElement = 'AzulMatScriptSG1')    
                    
                else:
                    shader = cmds.shadingNode ('lambert', asShader = True, n = 'AzulMatScript') 
                    shading_group= cmds.sets(renderable=True,noSurfaceShader=True,empty=True, n = 'AzulMatScriptSG1') 
                    cmds.connectAttr('%s.outColor' %shader ,'%s.surfaceShader' %shading_group)   
                    cmds.setAttr ('AzulMatScript.color', 0.0, 0.0, 1.0, type = 'double3') 
                    cmds.select (jointName + str (X) + 'CCShape')              
                    cmds.sets (e= True, forceElement = 'AzulMatScriptSG1')   
                    
            
    ColorAmarillo = cmds.checkBox(AmarilloCheck, q = True, v = True)
    
    if (ColorAmarillo):      
        if currentValue == 'Circle':   
            for R in range (1,JointAmount+1):
                cmds.setAttr (jointName + str(R) + 'CCShape.overrideEnabled', True) 
                cmds.setAttr (str (jointName) + str (R) + 'CCShape.overrideColor', 17)
                        
        elif currentValue == 'NurbsSphere':   
        
            for X in range (1, JointAmount + 1):  
                cmds.select (clear = True)                
                
                if cmds.objExists('AmarilloMatScript'):
                    cmds.select (jointName + str (X) + 'CCShape')
                    cmds.sets (e= True, forceElement = 'AmarilloMatScriptSG1')    
                    
                else:
                    shader = cmds.shadingNode ('lambert', asShader = True, n = 'AmarilloMatScript') 
                    shading_group= cmds.sets(renderable=True,noSurfaceShader=True,empty=True, n = 'AmarilloMatScriptSG1') 
                    cmds.connectAttr('%s.outColor' %shader ,'%s.surfaceShader' %shading_group)   
                    cmds.setAttr ('AmarilloMatScript.color', 1.0, 1.0, 0.0, type = 'double3') 
                    cmds.select (jointName + str (X) + 'CCShape')              
                    cmds.sets (e= True, forceElement = 'AmarilloMatScriptSG1')               


            
    ColorVerde = cmds.checkBox(VerdeCheck, q = True, v = True)
    
    if (ColorVerde):      
        if currentValue == 'Circle':   
            for R in range (1,JointAmount+1):
                cmds.setAttr (jointName + str(R) + 'CCShape.overrideEnabled', True) 
                cmds.setAttr (str (jointName) + str (R) + 'CCShape.overrideColor', 14)
                        
        elif currentValue == 'NurbsSphere':   
            for X in range (1, JointAmount + 1):  
                cmds.select (clear = True)                
                
                if cmds.objExists('VerdeMatScript'):
                    cmds.select (jointName + str (X) + 'CCShape')
                    cmds.sets (e= True, forceElement = 'VerdeMatScriptSG1')    
                    
                else:
                    shader = cmds.shadingNode ('lambert', asShader = True, n = 'VerdeMatScript') 
                    shading_group= cmds.sets(renderable=True,noSurfaceShader=True,empty=True, n = 'VerdeMatScriptSG1') 
                    cmds.connectAttr('%s.outColor' %shader ,'%s.surfaceShader' %shading_group)   
                    cmds.setAttr ('VerdeMatScript.color', 0.0, 1.0, 0.0, type = 'double3') 
                    cmds.select (jointName + str (X) + 'CCShape')              
                    cmds.sets (e= True, forceElement = 'VerdeMatScriptSG1')   
            
#Disable other checks     
   
def Rojo (*args)  :   
    cmds.checkBox (AzulCheck, q= True, e = True, v = 0)
    cmds.checkBox (VerdeCheck, q= True, e = True, v = 0)
    cmds.checkBox (AmarilloCheck, q= True, e = True, v = 0)



def Azul (*args)  :   
    cmds.checkBox (RojoCheck, q= True, e = True, v = 0)
    cmds.checkBox (VerdeCheck, q= True, e = True, v = 0)
    cmds.checkBox (AmarilloCheck, q= True, e = True, v = 0)
    
def Amarillo (*args)  :   
    cmds.checkBox (AzulCheck, q= True, e = True, v = 0)
    cmds.checkBox (RojoCheck, q= True, e = True, v = 0)
    cmds.checkBox (VerdeCheck, q= True, e = True, v = 0)
    
def Verde (*args)  :   
    cmds.checkBox (AzulCheck, q= True, e = True, v = 0)
    cmds.checkBox (RojoCheck, q= True, e = True, v = 0)
    cmds.checkBox (AmarilloCheck, q= True, e = True, v = 0)
    
        
cmds.window( 'Animacion6', width=250, title= 'Animacion6.4' )
cmds.columnLayout( adjustableColumn=True )


cmds.separator (h = 20)
Name = cmds.textFieldGrp (l = 'Nombre', editable = True, tx = 'RenderDeMartes')
cmds.separator (h = 10)
polygonSelectMenu = cmds.optionMenu(w = 250, label = "Forma del Control:")
cmds.menuItem(label = "Circle")
cmds.menuItem(label = "NurbsSphere")
cmds.separator (h = 10)
jointsNum = cmds.intSliderGrp (l = 'Cantidad:', min = 1 , max = 10, field = True, v = 3)

cmds.separator (h = 10)

RadioControlador = cmds.floatSliderGrp (l = 'Radio del Controlador:', min = 1 , max = 10, field = True, v = 5)
cmds.separator (h = 10)


cmds.text( label='Color del control:')
RojoCheck=cmds.checkBox (l = 'Rojo',onc = Rojo, v = 1)
AzulCheck=cmds.checkBox (l = 'Azul',onc = Azul)
AmarilloCheck=cmds.checkBox (l = 'Amarillo',onc = Amarillo)
VerdeCheck=cmds.checkBox (l = 'Verde',onc = Verde)

cmds.columnLayout( adjustableColumn=True )

cmds.separator (h = 10)
cmds.button (l = 'Crear Sistema', c = Ani6)
cmds.separator (h = 10)
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )

cmds.separator (h = 10)
cmds.showWindow('Animacion6')



    

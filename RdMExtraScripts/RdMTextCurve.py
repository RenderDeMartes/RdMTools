'''
20/10/18
TextCurve
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import TextCurve
reload (TextCurve)
'''

from maya import cmds
import maya.mel as mel

if cmds.window ('TextCurve', exists = True):
    cmds.deleteUI ('TextCurve')

def TextToCurve(Textisimo):   
    #Im deleting one node so if theres one already in the scene i dont want to delete it
    if cmds.objExists('makeTextCurves1'):
        cmds.rename ('makeTextCurves1','makeTextCurves1LOL')
        
    #Lets Create some curves    
    Texto = '_'+cmds.textField(TextField, text = True, q=True)
    Color = cmds.floatSlider (ColoresSlider, q = True, value = 16)

    LetrasDobles = []    
    Text = cmds.textCurves (n= Texto, t = Texto, o = True)    
    Lista= cmds.listRelatives (Text, ad = True)
    
    #print Lista
    Shape = Lista[1]
    #print Shape
    
    cmds.delete ('makeTextCurves1')

    for Curva in Lista:
        if cmds.objectType(str(Curva), isType='nurbsCurve'):
            #print Curva
            #Get Parents
            curvaPapa = cmds.listRelatives(Curva, p = True)
            #print 'Curva papa ' + str(curvaPapa)
            curvaAbuelo = cmds.listRelatives(curvaPapa, p = True)
            #print 'curva Abuelo '+(curvaAbuelo[0])
    
            #letters like e and o have 2 curves instead of 1
            DobleCurva = cmds.listRelatives(curvaAbuelo)
            
            if len(DobleCurva)==2:
                                
                #print 'DobleCurva ' + str(DobleCurva)
                LetrasDobles.append (Curva)
                            
            else:   
                     
                #parent to first shape
                if not Shape == curvaPapa[0]:
                    cmds.makeIdentity (curvaAbuelo, a = True, t = True , r = True)
                    cmds.parent (Curva, Shape, r = True, s = True)
                                                        
                #Colores
                cmds.setAttr (Curva+'.overrideEnabled', 1)
                cmds.setAttr (Curva+'.overrideColor', Color)
                      
    #Do stuff for the Double Letters
        #print LetrasDobles
    for dl in LetrasDobles:
        dlPapa = cmds.listRelatives (dl, p = True)
        dlAbuelo = cmds.listRelatives (dlPapa, p = True)
        cmds.makeIdentity (dlAbuelo, a = True, t = True , r = True)
        cmds.parent(dl, Shape, r = True, s = True)
        cmds.setAttr (dl+'.overrideEnabled', 1)
        cmds.setAttr (dl+'.overrideColor', Color)
                   
    #Organizing
    cmds.parent (Shape, w = True)       
    cmds.rename (Shape, Texto + str('_CV')) 
    cmds.delete(Text[0])
    cmds.delete (Texto + str('_CVShape'))
    cmds.move (-0.5,0,0, r = True)
    cmds.xform(cp= True)
    
    
        
            
cmds.window( "TextCurve", width=250, title="Text to curves", toolbox = True)
cmds.columnLayout( adjustableColumn=True )
cmds.separator(h = 10)
TextField = cmds.textField(editable = True, tx = '')
ColoresSlider=cmds.floatSlider (min=-0, max=32, value=16, step=1)
cmds.button( label='Create curve', command=TextToCurve)
cmds.columnLayout()
cmds.separator(h = 10)
cmds.showWindow("TextCurve")
        
         
            
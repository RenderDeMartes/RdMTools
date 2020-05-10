'''
20/09/18
RdMAttributeHideReveal
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMAttributeHideReveal
reload (RdMAttributeHideReveal)
'''

from maya import cmds 
import pymel.core as pm

if cmds.window ('HideAttr', exists = True):
    cmds.deleteUI ('HideAttr')
    
    
cmds.window('HideAttr', width=250, title= 'RdM Hide Attributes')
cmds.columnLayout( adjustableColumn=True )
cmds.separator (h = 20)

def Hide(*args):
    
    Controladores = cmds.ls(sl = True)
    
    TranslateLock = cmds.checkBox(TranslateCheck, q = True, v = True)
    if (TranslateLock):
        for T in Controladores:            
            cmds.setAttr(str(T)+'.translateX',lock = True, keyable = False, channelBox = False)
            cmds.setAttr(str(T)+'.translateY',lock = True, keyable = False, channelBox = False)
            cmds.setAttr(str(T)+'.translateZ',lock = True, keyable = False, channelBox = False)
        
    RotateLock = cmds.checkBox(RotateCheck, q = True, v = True)
    if (RotateLock):
        for R in Controladores:    
            cmds.setAttr(str(R)+'.rotateX',lock = True, keyable = False, channelBox = False)
      
            cmds.setAttr(str(R)+'.rotateY',lock = True, keyable = False, channelBox = False)
            cmds.setAttr(str(R)+'.rotateZ',lock = True, keyable = False, channelBox = False)
            
    ScaleLock = cmds.checkBox(ScaleCheck, q = True, v = True)
    if (ScaleLock):            
        for S in Controladores:    
            cmds.setAttr(str(S)+'.scaleX',lock = True, keyable = False, channelBox = False)
            cmds.setAttr(str(S)+'.scaleY',lock = True, keyable = False, channelBox = False)
            cmds.setAttr(str(S)+'.scaleZ',lock = True, keyable = False, channelBox = False)

    Visibility = cmds.checkBox(VisibilityCheck, q = True, v = True)
    if (ScaleLock):            
        for S in Controladores:    
            cmds.setAttr(str(S)+'.visibility',lock = True, keyable = False, channelBox = False)

def Show(*args):
    
    Controladores = cmds.ls(sl = True)
    
    TranslateLock = cmds.checkBox(TranslateCheck, q = True, v = True)
    if (TranslateLock):
        for T in Controladores:            
            cmds.setAttr(str(T)+'.scaleX',lock = False, keyable = True, channelBox = True)
            cmds.setAttr(str(T)+'.scaleY',lock = False, keyable = True, channelBox = True)
            cmds.setAttr(str(T)+'.scaleZ',lock = False, keyable = True, channelBox = True)
        
            
    RotateLock = cmds.checkBox(RotateCheck, q = True, v = True)
    if (RotateLock):
        for R in Controladores:    
            cmds.setAttr(str(R)+'.scaleX',lock = False, keyable = True, channelBox = True)
            cmds.setAttr(str(R)+'.scaleY',lock = False, keyable = True, channelBox = True)
            cmds.setAttr(str(R)+'.scaleZ',lock = False, keyable = True, channelBox = True)


            
    ScaleLock = cmds.checkBox(ScaleCheck, q = True, v = True)
    if (ScaleLock):            
        for S in Controladores:    
            cmds.setAttr(str(S)+'.scaleX',lock = False, keyable = True, channelBox = True)
            cmds.setAttr(str(S)+'.scaleY',lock = False, keyable = True, channelBox = True)
            cmds.setAttr(str(S)+'.scaleZ',lock = False, keyable = True, channelBox = True)


            
    Visibility = cmds.checkBox(VisibilityCheck, q = True, v = True)
    if (ScaleLock):            
        for S in Controladores:    
            cmds.setAttr(str(S)+'.visibility', keyable = True, channelBox = True,lock = False)
            cmds.setAttr(str(S)+'.visibility', lock = False)            



    
cmds.text('Attribute:')    
TranslateCheck=cmds.checkBox (l = 'Translate',)
RotateCheck=cmds.checkBox (l = 'Rotate',)
ScaleCheck=cmds.checkBox (l = 'Scale', v = 1)
VisibilityCheck=cmds.checkBox (l = 'Visibility', v = 1)

cmds.button(l = 'Hide', c= Hide)
cmds.button(l = 'Reveal', c = Show)

cmds.separator (h = 10)
cmds.showWindow('HideAttr')


'''
setAttr -lock true -keyable false -channelBox false "pCube1.tx";
setAttr -lock true -keyable false -channelBox false "pCube1.ty";
setAttr -lock true -keyable false -channelBox false "pCube1.tz";
'''
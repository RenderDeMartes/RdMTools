'''
04/06/18
RdMAutoArms v1.1
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import AutoHandsV1
reload (AutoHandsV1)
'''

from maya import cmds


if cmds.window ("AutoHandsV1", exists = True):
    cmds.deleteUI ("AutoHandsV1")


#Hand Joints   
     
def HandJoints(*args): 
    
    
    if cmds.window ("Hand", exists = True):
        cmds.deleteUI ("Hand")


    def HandsContinue (*args):
        
        filePath  = cmds.internalVar (usd = True)
        cmds.file ( filePath +"\RdMExtraParts\HandJoints.mb", i = True , type = "mayaBinary", ignoreVersion = True)
        
        if cmds.objExists ('L_arm_4'):
            cmds.pointConstraint ("L_arm_4","L_Palm_CC")
            cmds.orientConstraint ("L_arm_4","L_Palm_CC", mo = True)
            cmds.delete ("L_Palm_CC_pointConstraint1")
            cmds.delete ("L_Palm_CC_orientConstraint1")
            cmds.select ("L_Palm_CC")
            cmds.move (10,0,0, relative = True)
        cmds.group ("L_Palm_CC", n= "HandPosition")
        cmds.deleteUI ("Hand")      
    
    def SaveCurrent (*args):
        
        cmds.file (save = True, options ="v=0;" )
    
    cmds.window ("Hand", width =200, h= 25 , s = False, title = "HandStuff")    
    cmds.columnLayout( adjustableColumn=True )
    cmds.text( label='This action is unduable, please save before continue' )
    cmds.button( label='Save Scene', command= SaveCurrent)
    cmds.button (label = 'Continue', command = HandsContinue)
    cmds.showWindow()

         
#HandControls

def HandControls(*args): 

    cmds.select ("L_Palm_CC")
    cmds.parent (w = True)
    cmds.mirrorJoint ("L_Palm_CC", searchReplace = ("L_", "R_"), mirrorYZ = True, mirrorBehavior = True )
    
    if cmds.objExists ('L_arm_4'):
        cmds.parent ("L_Palm_CC","L_arm_4")
        cmds.parent ("R_Palm_CC","R_arm_4")
        
    cmds.delete ("HandPosition")
    
   
#Fingers Controls    

    radio = 1
    
    if cmds.objExists ('L_Thumb01_JJ'):
        for Thumb in range (1,4):  
                    
            cmds.circle (n = "L_Thumb0" + str (Thumb) + "_CC", nr = (1,0,0), r = radio)
            cmds.group (n= 'L_Thumb0' + str (Thumb) + '_CC' + 'GRP')
            cmds.pointConstraint ('L_Thumb0' + str (Thumb) + '_JJ', 'L_Thumb0' + str (Thumb) + '_CC' + 'GRP')
            cmds.orientConstraint ('L_Thumb0' + str (Thumb) + '_JJ', 'L_Thumb0' + str (Thumb) + '_CC'+ 'GRP', mo = False )
            cmds.delete ("L_Thumb0" + str (Thumb)+"_CCGRP_pointConstraint1", "L_Thumb0" + str (Thumb)+"_CCGRP_orientConstraint1")
            cmds.orientConstraint ('L_Thumb0' + str (Thumb) + '_CC', 'L_Thumb0' + str (Thumb) + '_JJ')
            cmds.setAttr('L_Thumb0' + str (Thumb) + '_CC' + "Shape.overrideEnabled", True )
            cmds.setAttr('L_Thumb0' + str (Thumb) + '_CC' + "Shape.overrideColor", 6 )
        
        cmds.parent ('L_Thumb02_CCGRP','L_Thumb01_CC')
        cmds.parent ('L_Thumb03_CCGRP','L_Thumb02_CC')



    if cmds.objExists ('L_Index01_JJ'):            
        for Index in range (1,5):  
                    
            cmds.circle (n = "L_Index0" + str (Index) + "_CC", nr = (1,0,0), r = radio)
            cmds.group (n= 'L_Index0' + str (Index) + '_CC' + 'GRP')
            cmds.pointConstraint ('L_Index0' + str (Index) + '_JJ', 'L_Index0' + str (Index) + '_CC' + 'GRP')
            cmds.orientConstraint ('L_Index0' + str (Index) + '_JJ', 'L_Index0' + str (Index) + '_CC'+ 'GRP', mo = False )
            cmds.delete ("L_Index0" + str (Index)+"_CCGRP_pointConstraint1", "L_Index0" + str (Index)+"_CCGRP_orientConstraint1")
            cmds.orientConstraint ('L_Index0' + str (Index) + '_CC', 'L_Index0' + str (Index) + '_JJ')
            cmds.setAttr('L_Index0' + str (Index) + '_CC' + "Shape.overrideEnabled", True )
            cmds.setAttr('L_Index0' + str (Index) + '_CC' + "Shape.overrideColor", 6 )
        
        cmds.parent ('L_Index02_CCGRP','L_Index01_CC')
        cmds.parent ('L_Index03_CCGRP','L_Index02_CC')
        cmds.parent ('L_Index04_CCGRP','L_Index03_CC')


    if cmds.objExists ('L_Middle01_JJ'):     
        for Middle in range (1,5):  
                    
            cmds.circle (n = "L_Middle0" + str (Middle) + "_CC", nr = (1,0,0), r = radio)
            cmds.group (n= 'L_Middle0' + str (Middle) + '_CC' + 'GRP')
            cmds.pointConstraint ('L_Middle0' + str (Middle) + '_JJ', 'L_Middle0' + str (Middle) + '_CC' + 'GRP')
            cmds.orientConstraint ('L_Middle0' + str (Middle) + '_JJ', 'L_Middle0' + str (Middle) + '_CC'+ 'GRP', mo = False )
            cmds.delete ("L_Middle0" + str (Middle)+"_CCGRP_pointConstraint1", "L_Middle0" + str (Middle)+"_CCGRP_orientConstraint1")
            cmds.orientConstraint ('L_Middle0' + str (Middle) + '_CC', 'L_Middle0' + str (Middle) + '_JJ')
            cmds.setAttr('L_Middle0' + str (Middle) + '_CC' + "Shape.overrideEnabled", True )
            cmds.setAttr('L_Middle0' + str (Middle) + '_CC' + "Shape.overrideColor", 6 )

        cmds.parent ('L_Middle02_CCGRP','L_Middle01_CC')
        cmds.parent ('L_Middle03_CCGRP','L_Middle02_CC')
        cmds.parent ('L_Middle04_CCGRP','L_Middle03_CC')


    if cmds.objExists ('L_Ring01_JJ'): 
        for Ring in range (1,5):  
                    
            cmds.circle (n = "L_Ring0" + str (Ring) + "_CC", nr = (1,0,0), r = radio)
            cmds.group (n= 'L_Ring0' + str (Ring) + '_CC' + 'GRP')
            cmds.pointConstraint ('L_Ring0' + str (Ring) + '_JJ', 'L_Ring0' + str (Ring) + '_CC' + 'GRP')
            cmds.orientConstraint ('L_Ring0' + str (Ring) + '_JJ', 'L_Ring0' + str (Ring) + '_CC'+ 'GRP', mo = False )
            cmds.delete ("L_Ring0" + str (Ring)+"_CCGRP_pointConstraint1", "L_Ring0" + str (Ring)+"_CCGRP_orientConstraint1")
            cmds.orientConstraint ('L_Ring0' + str (Ring) + '_CC', 'L_Ring0' + str (Ring) + '_JJ')
            cmds.setAttr('L_Ring0' + str (Ring) + '_CC' + "Shape.overrideEnabled", True )
            cmds.setAttr('L_Ring0' + str (Ring) + '_CC' + "Shape.overrideColor", 6 )

        cmds.parent ('L_Ring02_CCGRP','L_Ring01_CC')
        cmds.parent ('L_Ring03_CCGRP','L_Ring02_CC')
        cmds.parent ('L_Ring04_CCGRP','L_Ring03_CC')

    if cmds.objExists ('L_Pinky01_JJ'):        
        for Pinky in range (1,5):  
                    
            cmds.circle (n = "L_Pinky0" + str (Pinky) + "_CC", nr = (1,0,0), r = radio)
            cmds.group (n= 'L_Pinky0' + str (Pinky) + '_CC' + 'GRP')
            cmds.pointConstraint ('L_Pinky0' + str (Pinky) + '_JJ', 'L_Pinky0' + str (Pinky) + '_CC' + 'GRP')
            cmds.orientConstraint ('L_Pinky0' + str (Pinky) + '_JJ', 'L_Pinky0' + str (Pinky) + '_CC'+ 'GRP', mo = False )
            cmds.delete ("L_Pinky0" + str (Pinky)+"_CCGRP_pointConstraint1", "L_Pinky0" + str (Pinky)+"_CCGRP_orientConstraint1")
            cmds.orientConstraint ('L_Pinky0' + str (Pinky) + '_CC', 'L_Pinky0' + str (Pinky) + '_JJ')
            cmds.setAttr('L_Pinky0' + str (Pinky) + '_CC' + "Shape.overrideEnabled", True )
            cmds.setAttr('L_Pinky0' + str (Pinky) + '_CC' + "Shape.overrideColor", 6 )

        cmds.parent ('L_Pinky02_CCGRP','L_Pinky01_CC')
        cmds.parent ('L_Pinky03_CCGRP','L_Pinky02_CC')
        cmds.parent ('L_Pinky04_CCGRP','L_Pinky03_CC')        

    cmds.select (clear = True)
    cmds.group (n = 'L_HandControls_GRP', em = True)
    cmds.parent ('L_Thumb01_CCGRP','L_Index01_CCGRP','L_Middle01_CCGRP','L_Ring01_CCGRP','L_Pinky01_CCGRP','L_HandControls_GRP' )   
    cmds.xform ('L_HandControls_GRP', piv = (0,0,0) ,ws=True)   
    cmds.duplicate ('L_HandControls_GRP', n= 'R_HandControls_GRP')
    cmds.setAttr ("R_HandControls_GRP.scaleX", -1)
    cmds.makeIdentity ('R_HandControls_GRP',a = True, t = 1, r = 1)

    cmds.select ('R_HandControls_GRP')
    cmds.expression ( s= "searchReplaceNames \"L_\" \"R_\" \"hierarchy\";" , n = "Rename" , o = "" , ae= 0)
    cmds.delete ("Rename")
    
    
    #RightHand_CC.orient
    
    if cmds.objExists ('R_Thumb01_JJ'):            
        for RThumb in range (1,4): 
            cmds.orientConstraint ('R_Thumb0' + str (RThumb) + '_CC', 'R_Thumb0' + str (RThumb) + '_JJ', mo = True)
            cmds.setAttr('R_Thumb0' + str (RThumb) + '_CC' + "Shape.overrideColor", 13 )
            
    if cmds.objExists ('R_Index01_JJ'):            
        for RIndex in range (1,5): 
            cmds.orientConstraint ('R_Index0' + str (RIndex) + '_CC', 'R_Index0' + str (RIndex) + '_JJ', mo = True)            
            cmds.setAttr('R_Index0' + str (RIndex) + '_CC' + "Shape.overrideColor", 13 )
            
    if cmds.objExists ('R_Middle01_JJ'):            
        for RMiddle in range (1,5): 
            cmds.orientConstraint ('R_Middle0' + str (RMiddle) + '_CC', 'R_Middle0' + str (RMiddle) + '_JJ', mo = True)  
            cmds.setAttr('R_Middle0' + str (RMiddle) + '_CC' + "Shape.overrideColor", 13 )
                  
    if cmds.objExists ('R_Ring01_JJ'):            
        for RRing in range (1,5): 
            cmds.orientConstraint ('R_Ring0' + str (RRing) + '_CC', 'R_Ring0' + str (RRing) + '_JJ', mo = True) 
            cmds.setAttr('R_Ring0' + str (RRing) + '_CC' + "Shape.overrideColor", 13 )  
            
    if cmds.objExists ('R_Pinky01_JJ'):            
        for RPinky in range (1,5): 
            cmds.orientConstraint ('R_Pinky0' + str (RPinky) + '_CC', 'R_Pinky0' + str (RPinky) + '_JJ', mo = True) 
            cmds.setAttr('R_Pinky0' + str (RPinky) + '_CC' + "Shape.overrideColor", 13 )
    
    
    cmds.parent ('L_HandControls_GRP','L_Palm_CC')
    cmds.parent ('R_HandControls_GRP','R_Palm_CC')
          

    cmds.select ('L_Palm_CC', 'L_Thumb01_JJ', 'L_Thumb02_JJ', 'L_Thumb03_JJ', 'L_Index01_JJ', 'L_Index02_JJ', 'L_Index03_JJ', 'L_Index04_JJ', 'L_Middle01_JJ', 'L_Middle02_JJ', 'L_Middle03_JJ', 'L_Middle04_JJ', 'L_Ring01_JJ', 'L_Ring02_JJ', 'L_Ring03_JJ', 'L_Ring04_JJ', 'L_Pinky01_JJ', 'L_Pinky02_JJ', 'L_Pinky03_JJ', 'L_Pinky04_JJ', 'R_Palm_CC', 'R_Thumb01_JJ', 'R_Thumb02_JJ', 'R_Thumb03_JJ', 'R_Index01_JJ', 'R_Index02_JJ', 'R_Index03_JJ', 'R_Index04_JJ', 'R_Middle01_JJ', 'R_Middle02_JJ', 'R_Middle03_JJ', 'R_Middle04_JJ', 'R_Ring01_JJ', 'R_Ring02_JJ', 'R_Ring03_JJ', 'R_Ring04_JJ', 'R_Pinky01_JJ', 'R_Pinky02_JJ', 'R_Pinky03_JJ', 'R_Pinky04_JJ' )           
    cmds.sets (n= 'BindThisToHands')    

    print ('DONE')
    

cmds.window( "AutoHandsV1", width=250, title="AutoHandsV1" )
cmds.columnLayout( adjustableColumn=True )
cmds.separator ()    
cmds.button( label='Hand Position', command= HandJoints )
cmds.separator ()    
cmds.button( label='Hand Controls', command= HandControls )
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow("AutoHandsV1")
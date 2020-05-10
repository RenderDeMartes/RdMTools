'''
12/9/18
RdMAutoComplete v1.0
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMAutoComplete
reload (RdMAutoComplete)
'''

from maya import cmds

if cmds.window ("AutoComplete", exists = True):
    cmds.deleteUI ("AutoComplete")


#Create Maser Controllers

def MasterControl (*args):   
 
    Character = cmds.textFieldGrp (Name, q = True, text = True)
    ControlScale = cmds.floatSliderGrp (scaleCC, q = True, value = 8)
    
    cmds.circle (nr = (0,1,0), n = str (Character) + '_MasterControl', r = ControlScale)
    cmds.group (str (Character) + '_MasterControl' ,n = str (Character) + '_MasterControl_GRP')
    cmds.circle (nr = (0,1,0), n = str (Character) + '_MoveControl', r = ControlScale/1.5)
    cmds.group (str (Character) + '_MoveControl' ,n = str (Character) + '_MoveControl_GRP')
    cmds.group (str (Character) + '_MasterControl_GRP', n = Character + '_RdM Autorig')
    cmds.parent (str (Character) + '_MoveControl_GRP', str (Character) + '_MasterControl')
    cmds.setAttr(str (Character) + '_MoveControl'  + "Shape.overrideEnabled", True )
    cmds.setAttr(str (Character) + '_MoveControl'+ "Shape.overrideColor", 17 )
    cmds.setAttr(str (Character) + '_MasterControl' + "Shape.overrideEnabled", True )
    cmds.setAttr(str (Character) + '_MasterControl' + "Shape.overrideColor", 16 )

        
#Parent to MASTER CONTROL

        
def ConnectSpine (*args):      
    if cmds.objExists ('RdM_AutoSPINE'):
        Character = cmds.textFieldGrp (Name, q = True, text = True)
        cmds.parent ('RdM_AutoSPINE', str (Character) + '_MoveControl') 
          
def ConnectLegs (*args):      
    if cmds.objExists ('RdM_AutoLEGS'):
        Character = cmds.textFieldGrp (Name, q = True, text = True)
        if cmds.objExists ('IK_FK_CC'):
            Character = cmds.textFieldGrp (Name, q = True, text = True)
            Papa = cmds.listRelatives ('IK_FK_CC',c= True, p = True)
            if Papa < 1:
                cmds.parent ('IK_FK_CC', str (Character) + '_MoveControl' )
                
        cmds.parent ('RdM_AutoLEGS', str (Character) + '_MoveControl' )    
        cmds.parentConstraint ('ReverseSpine_JE','L_Leg_FK_CCGRP', mo = True)    
        cmds.parentConstraint ('ReverseSpine_JE','R_Leg_FK_CCGRP', mo = True)    
        cmds.parentConstraint ('ReverseSpine_JE','L_Leg_IK', mo = True)    
        cmds.parentConstraint ('ReverseSpine_JE','R_Leg_IK', mo = True)  
                  
def ConnectArms (*args):          
    if cmds.objExists ('RdM_AutoARMS'):
        Character = cmds.textFieldGrp (Name, q = True, text = True)
        if cmds.objExists ('IK_FK_CC'):
            Character = cmds.textFieldGrp (Name, q = True, text = True)
            Papa = cmds.listRelatives ('IK_FK_CC',c= True, p = True)
            if Papa < 1:
                cmds.parent ('IK_FK_CC', str (Character) + '_MoveControl' )
                
        cmds.parent ('RdM_AutoARMS', str (Character) + '_MoveControl' )  
        cmds.parentConstraint ('Spine_ConnectToArms','L_clavicule_01_GRP' , mo = True)    
        cmds.parentConstraint ('Spine_ConnectToArms','R_clavicule_01_GRP' , mo = True)
  
def ConnectHead (*args):     
    if cmds.objExists ('RdM_ChickenHead'):
            Character = cmds.textFieldGrp (Name, q = True, text = True)
            cmds.parent ('RdM_ChickenHead', str (Character) + '_MoveControl' )   


#Window
cmds.window( "AutoComplete", width=250, title="AutoComplete", toolbox = True  )
cmds.columnLayout( adjustableColumn=True )

cmds.separator (h = 20)
Name = cmds.textFieldGrp (l = 'Character name:', editable = True, tx = 'RdM', hlc = (1,1,1))
scaleCC = cmds.floatSliderGrp (l = 'Scale:', min = 1 , max = 60, field = True, v = 8, hlc = (1,1,1))
cmds.button( label='Create Base Controllers', c = MasterControl , bgc = (1,1,1) )

cmds.separator (h = 20)

cmds.button( label='Connect Spine to MasterControl', c = ConnectSpine, bgc = (1,1,1) )
cmds.button( label='Connect Arms to Spine', c = ConnectArms , bgc = (1,1,1))
cmds.button( label='Connect Legs to Spine', c = ConnectLegs , bgc = (1,1,1))
cmds.button( label='Connect Head to Spine', c = ConnectHead , bgc =(1,1,1))

cmds.separator (h = 20)

cmds.text( label='By: Render de Martes', fn ='fixedWidthFont')
cmds.text( label='info@renderdemartes.com', fn ='fixedWidthFont')
cmds.showWindow("AutoComplete")

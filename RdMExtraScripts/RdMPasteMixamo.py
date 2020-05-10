from maya import cmds

RdMControllers_Arms = ['L_armFK_01_CC','L_armFK_02_CC','L_armFK_03_CC','R_armFK_01_CC','R_armFK_02_CC','R_armFK_03_CC']
MixamoJoints_Arms = ['LeftArm','LeftForeArm','LeftHand','RightArm','RightForeArm','RightHand']

RdMControllers_Legs = ['L_Leg_FK_CC','L_Knee_FK_CC','L_Ankle_FK_CC','L_Ball_FK_CC','R_Leg_FK_CC','R_Knee_FK_CC','R_Ankle_FK_CC','R_Ball_FK_CC']
MixamoJoints_Legs = ['LeftUpLeg','LeftLeg','LeftFoot','LeftToeBase','RightUpLeg','RightLeg','RightFoot','RightToeBase']

RdMControllers_Spine = ['COG_CC','Spine1_CC','Spine2_CC','Spine3_CC']
MixamoJoints_Spine = ['Hips','Spine','Spine1','Spine2']

RdMControllers_Head = ['Neck_CC','Head_CC']
MixamoJoints_Head = ['Neck','Head']

def copyPart (RdM,Mixamo,*args):
    X = 0
    for i in RdM:
        print i
        print Mixamo [X]
        cmds.select(i)
        Grupo = cmds.group(n = str(i)+'_mixamoConstraint')
        cmds.parentConstraint (Mixamo [X], Grupo, mo = True)
        X = X + 1


copyPart (RdMControllers_Arms, MixamoJoints_Arms)
#copyPart (RdMControllers_Legs, MixamoJoints_Legs)
copyPart (RdMControllers_Spine, MixamoJoints_Spine)
copyPart (RdMControllers_Head, MixamoJoints_Head)

#Legs

#LegNotWorking

cmds.orientConstraint ('LeftUpLeg', 'L_Leg_FK_CC', mo = True)    

cmds.orientConstraint ('RightUpLeg', 'R_Leg_FK_CC', mo = True)    


cmds.orientConstraint ('LeftLeg', 'L_Knee_FK_CCGRP', mo = True)    

cmds.orientConstraint ('LeftFoot', 'L_Ankle_FK_CCGRP', mo = True)    

cmds.orientConstraint ('LeftToeBase', 'L_Ball_FK_CCGRP', mo = True)    

cmds.orientConstraint ('RightLeg', 'R_Knee_FK_CCGRP', mo = True)    

cmds.orientConstraint ('RightFoot', 'R_Ankle_FK_CCGRP', mo = True)    

cmds.orientConstraint ('RightToeBase', 'R_Ball_FK_CCGRP', mo = True)    


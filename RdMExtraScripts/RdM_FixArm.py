from maya import cmds

#Borrar lo malo
cmds.delete('L_UpArmTwist','L_DownArmTwist','L_UpTwist_IK','L_DownTwist_IK','R_UpArmTwist','R_DownArmTwist','R_UpTwist_IK','R_DownTwist_IK')
cmds.delete('R_TwistShoulder_JJ_parentConstraint1','R_TwistElbow_JJ_parentConstraint1','R_TwistWrist_JJ_parentConstraint1','L_TwistWrist_JJ_parentConstraint1','L_TwistElbow_JJ_parentConstraint1','L_TwistShoulder_JJ_parentConstraint1')
cmds.delete('L_TwistShoulder_JJ','R_TwistShoulder_JJ','L_UpArmTwist01','R_UpArmTwist01')

#Acomodar todo del lado izquierdo
cmds.parent('L_TwistWrist_JJ','L_TwistElbow_JJ')
cmds.parent('L_TwistElbow_JJ','L_DownArmTwist02','L_arm_3')

cmds.delete('L_DownArmTwist03','L_DownArmTwist01')

cmds.makeIdentity('L_TwistElbow_JJ', apply = True, t=1,r=1)

#IKSc
cmds.select('L_TwistElbow_JJ','L_TwistWrist_JJ')
cmds.ikHandle(sol = 'ikSCsolver', n = 'L_TwistIKSc')
cmds.parent('L_TwistIKSc', 'L_arm_4')

#Orient for Twist
OrientTemp= cmds.orientConstraint('L_TwistElbow_JJ', 'L_arm_4', 'L_DownArmTwist02', mo=0)
cmds.delete(OrientTemp)

cmds.makeIdentity('L_DownArmTwist02', apply = True, t=1,r=1)


#ConnectionEditor
cmds.shadingNode('multiplyDivide',asUtility=1, n = 'L_TwistMult')
cmds.connectAttr('L_TwistElbow_JJ.rotate.rotateX', 'L_TwistMult.input1.input1X')
cmds.setAttr('L_TwistMult.input2X', 0.5)
cmds.connectAttr('L_TwistMult.output.outputX', 'L_DownArmTwist02.rotate.rotateX')

#Duplicar para R
#Acomodar todo del lado izquierdo
cmds.parent('R_TwistWrist_JJ','R_TwistElbow_JJ')
cmds.parent('R_TwistElbow_JJ','R_DownArmTwist02','R_arm_3')

cmds.delete('R_DownArmTwist03','R_DownArmTwist01')

cmds.makeIdentity('R_TwistElbow_JJ', apply = True, t=1,r=1)

#IKSc
cmds.select('R_TwistElbow_JJ','R_TwistWrist_JJ')
cmds.ikHandle(sol = 'ikSCsolver', n = 'R_TwistIKSc')
cmds.parent('R_TwistIKSc', 'R_arm_4')

#Orient for Twist
OrientTemp= cmds.orientConstraint('R_TwistElbow_JJ', 'R_arm_4', 'R_DownArmTwist02', mo=0)
cmds.delete(OrientTemp)

cmds.makeIdentity('R_DownArmTwist02', apply = True, t=1,r=1)


#ConnectionEditor
cmds.shadingNode('multiplyDivide',asUtility=1, n = 'R_TwistMult')
cmds.connectAttr('R_TwistElbow_JJ.rotate.rotateX', 'R_TwistMult.input1.input1X')
cmds.setAttr('R_TwistMult.input2X', 0.5)
cmds.connectAttr('R_TwistMult.output.outputX', 'R_DownArmTwist02.rotate.rotateX')


cmds.select('L_DownArmTwist02','L_arm_1','R_DownArmTwist02','R_arm_1','R_arm_2','L_arm_2','L_arm_3','R_arm_3')
cmds.sets(n= 'BindFixArms')
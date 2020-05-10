'''

25/6/18
RdMSimpleRibbon v1.0
By Esteban Rodriguez

www.renderdemartes.com

info@renderdemartes.com

import RdMSimpleRibbon
reload (RdMSimpleRibbon)


how to:
    2 grupos
    1 con foliculos y joints que se bindean
    1 con joints que controlan en nurbs plane y tienen los controles con los point y aim constraints
    
    
    
'''

from maya import cmds
import pymel.core as pm

if cmds.window ("SimpleRibbon", exists = True):
    cmds.deleteUI ("SimpleRibbon")
 


def CreateRibbon (*args):
    planeName = cmds.textFieldGrp (planeNameField, q = True, text = True)
    jointAmount = cmds.intSliderGrp (JointAmountSlider, q = True, value = 10)
    
    if cmds.objExists ('hairSystem1Follicles'):
        cmds.warning ('HairSystem1Follicles allready Exists, please rename that hair system and nucleus')
    
    else:
        cmds.nurbsPlane (ax = (0, 1, 0), w = 1, lr = jointAmount, d = 3, u = 1, v = jointAmount,  n = planeName)
        pm.mel.createHair(1, jointAmount, 10, 0, 0, 0, 0, 5, 0, 1, 2, 1)
        cmds.delete ('hairSystem1','pfxHair1','nucleus1')
        cmds.setAttr(str (planeName)+'.inheritsTransform', 0)
        
        for C in range (1, jointAmount + 1):
            cmds.delete ('curve' + str (C) )
        cmds.rename ('hairSystem1Follicles', planeName + 'Follicle_GRP')
        
        Follicles = cmds.ls (planeName + 'Follicle_GRP', dag = True, type = 'follicle')
        
    NewName = 01
    BindJoints= []
        
    for item in Follicles:
        
        cmds.select (item)
        JointPos= pm.mel.joint (n =  str (planeName)+'RibbonJoint' + str (NewName) )
        cmds.select (cl=True)
        JointController= pm.mel.joint (n =  str (planeName)+'RibbonJointController' + str (NewName) )
        BindJoints.append(JointController)
        Poisiton= cmds.pointConstraint(JointPos,JointController, mo = False)
        cmds.setAttr (str(JointController)+'.radius', 2)
        Controlador = cmds.circle(n =  str (planeName)+'Controller' + str (NewName) )
        grupoControlador = cmds.group(n =  str (planeName)+'ControllerGRP' + str (NewName))
        grupoControladorPoint = cmds.group(n =  str (planeName)+'ControllerGRP_Point' + str (NewName))
        grupoControladorOrient = cmds.group(n =  str (planeName)+'ControllerGRP_Orient' + str (NewName))
        PosicionControlador = cmds.pointConstraint(JointPos, grupoControlador, mo = False)
        cmds.delete(Poisiton,PosicionControlador)
        cmds.parent (JointController,Controlador[0])
        cmds.setAttr(str(Controlador[0])+'.overrideEnabled', 1)
        cmds.setAttr(str(Controlador[0])+'.overrideColor', 16)
        

        NewName = NewName + 1
        
    
    cmds.setAttr (str (planeName) + '.inheritsTransform', 0) 
    cmds.select (cl = True)
   
    print BindJoints
    BindSkin= cmds.skinCluster(BindJoints, str(planeName), tsb= True,  nw=1, wd = 0, mi = 5, omi = True, dr = 4, rui = True )
    
   
   

#Window
cmds.window( "SimpleRibbon", width=250, title="SimpleRibbon" )
cmds.columnLayout( adjustableColumn=True )

cmds.separator (h = 20)
planeNameField = cmds.textFieldGrp (l = 'Ribbon name:', editable = True, tx = 'RdM_Ribbon')
JointAmountSlider = cmds.intSliderGrp (l = 'Scale:', min = 1 , max = 20, field = True, v = 9)

cmds.separator (h = 20)

cmds.button( label='Create Ribbon System', c = CreateRibbon )

cmds.separator (h = 20)

cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow("SimpleRibbon")

   
    
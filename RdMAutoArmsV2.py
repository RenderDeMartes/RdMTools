'''
09/10/18
RdMAutoArms v1.0
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMAutoArms
reload (RdMAutoArms)
'''


from maya import cmds

if cmds.window ("AutoArms", exists = True):
    cmds.deleteUI ("AutoArms")


###JOINTS LOCATORS
jointsNum = 4

def LocatorsBtn(*args):
    
    for X in range (jointsNum):
    
        cmds.select (clear = True)
        
        cmds.CreateLocator ()
        cmds.move (2.5*X+1, 0, 0)
        cmds.select (clear = True)

    cmds.rename ("locator1","L_Clavicule_LOC")
    cmds.rename ("locator2","L_Shoulder_LOC")
    cmds.rename ("locator3","L_Elbow_LOC")
    cmds.rename ("locator4","L_Wrist_LOC")

    if cmds.objExists ('SpineEnd_JC'):
        
         cmds.parent ('L_Wrist_LOC','L_Elbow_LOC')
         cmds.parent ('L_Elbow_LOC','L_Shoulder_LOC')
         cmds.parent ('L_Shoulder_LOC','L_Clavicule_LOC')
         cmds.pointConstraint ('SpineEnd_JC','L_Clavicule_LOC')
         cmds.delete ('L_Clavicule_LOC_pointConstraint1')
         cmds.parent ('L_Shoulder_LOC', 'L_Elbow_LOC ','L_Wrist_LOC', w = True)
         
    cmds.select('L_Elbow_LOC')
    cmds.move(0,0,-0.4, r = True)     
    cmds.select (clear = True)
    
def JointsBtn(*args):  

    cmds.rename ("L_Clavicule_LOC","locator1")
    cmds.rename ("L_Shoulder_LOC","locator2")
    cmds.rename ("L_Elbow_LOC","locator3")
    cmds.rename ("L_Wrist_LOC","locator4")

    
    
    cmds.select (cl=True)
    
    for X in range (1,jointsNum + 1):  
                
        cmds.joint (n = "L_arm_" + str(X))
        cmds.pointConstraint ("locator" + str (X) , "L_arm_" + str(X))
        cmds.delete ("L_arm_" + str(X) + "_pointConstraint1")
        cmds.delete ("locator" + str (X))
        cmds.setAttr ("L_arm_" + str(X) + ".displayLocalAxis", 1)   
    
        
    cmds.joint ()    
    cmds.select ("L_arm_1","L_arm_2","L_arm_3","L_arm_4")    
    cmds.joint(e= True, zso=True, oj= "xzy", sao = "zdown")
    cmds.delete ('joint1')
    
    cmds.select("L_arm_1")
    cmds.mirrorJoint (mirrorYZ = True, mirrorBehavior = True, searchReplace=('L_', 'R_') )
    
    cmds.select ("R_arm_4")
    cmds.joint ()    
    cmds.select ("R_arm_1","R_arm_2","R_arm_3","R_arm_4")    
    cmds.joint(e= True, zso=True, oj= "xzy", sao = "zup")
    cmds.delete ('joint1')

    
    cmds.select (clear = True) 
          
              
 ###IK FK CHAIN

def IKFK(*args):  

    for X in range (1,jointsNum + 1):  
                     
        cmds.setAttr ("L_arm_" + str(X) + ".displayLocalAxis", 0) 
        cmds.setAttr ("R_arm_" + str(X) + ".displayLocalAxis", 0)

    cmds.duplicate ("L_arm_2", rc = True)
    cmds.duplicate ("L_arm_2", rc = True)
    cmds.rename ("L_arm_5", "L_arm_01_IK")
    cmds.rename ("L_arm_6", "L_arm_02_IK")
    cmds.rename ("L_arm_7", "L_arm_03_IK")
    
    cmds.rename ("L_arm_8", "L_arm_01_FK")
    cmds.rename ("L_arm_9", "L_arm_02_FK")
    cmds.rename ("L_arm_10", "L_arm_03_FK")
   
    
    if cmds.objExists('R_arm_1'):
        
        print 'Mirror already aplied'
        cmds.duplicate ("R_arm_2", rc = True)
        cmds.duplicate ("R_arm_2", rc = True)
        cmds.rename ("R_arm_5", "R_arm_01_IK")
        cmds.rename ("R_arm_6", "R_arm_02_IK")
        cmds.rename ("R_arm_7", "R_arm_03_IK")
        
        cmds.rename ("R_arm_8", "R_arm_01_FK")
        cmds.rename ("R_arm_9", "R_arm_02_FK")
        cmds.rename ("R_arm_10", "R_arm_03_FK")
        
                 
    else:
        
        cmds.select("L_arm_1")
        cmds.mirrorJoint (mirrorYZ = True, mirrorBehavior = True, searchReplace=('L_', 'R_') )
    
    cmds.ikHandle (n="L_ArmIKrp", sj="L_arm_01_IK", ee= "L_arm_03_IK")
    cmds.ikHandle (n="R_ArmIKrp", sj="R_arm_01_IK", ee= "R_arm_03_IK")

    
#Controladores

############################
    GlobalMult  = cmds.floatSliderGrp (RadioControlador, q = True, value = 2)
############################
    
    #Clavicule
    
    cmds.circle (r= 3*GlobalMult,nr=(1, 0, 0), n= "L_clavicule_01_CC", ch= 0 )
    cmds.group  ("L_clavicule_01_CC", n="L_clavicule_01_GRP")
    cmds.parentConstraint ("L_arm_1", "L_clavicule_01_GRP"  )
    cmds.delete ("L_clavicule_01_GRP_parentConstraint1" )
    cmds.makeIdentity ("L_clavicule_01_CC", apply = True, t = True)
    cmds.setAttr("L_clavicule_01_CC" + "Shape.overrideEnabled", True )
    cmds.setAttr("L_clavicule_01_CC" + "Shape.overrideColor", 6 )

    cmds.duplicate ('L_clavicule_01_CC',n= "R_clavicule_01_CC")
    cmds.group  ("R_clavicule_01_CC", n="R_clavicule_01_GRP")
    cmds.parentConstraint ("R_arm_1", "R_clavicule_01_GRP"  )
    cmds.delete ("R_clavicule_01_GRP_parentConstraint1" )
    cmds.makeIdentity ("R_clavicule_01_CC", apply = True, t = True)
    cmds.setAttr("R_clavicule_01_CC" + "Shape.overrideEnabled", True )
    cmds.setAttr("R_clavicule_01_CC" + "Shape.overrideColor", 13 )

    #cmds.orientConstraint ('L_clavicule_01_CC','L_arm_1')
    #cmds.orientConstraint ('R_clavicule_01_CC','R_arm_1')
        
    #FK
    
    for P in range (1,jointsNum):    
       
        cmds.circle (r= 2*GlobalMult ,nr=(1, 0, 0), n= "L_armFK_0" +str(P) + "_CC", ch= 0 )
        cmds.group  ("L_armFK_0" +str(P) + "_CC", n="L_armFK_0" +str(P) + "_GRP")
        cmds.parentConstraint ("L_arm_0" +str(P) + "_FK", "L_armFK_0" +str(P) + "_GRP"  )
        cmds.delete ("L_armFK_0"+str(P)+ "_GRP_parentConstraint1" )
        cmds.makeIdentity ("L_armFK_0" +str(P) + "_CC", apply = True, t = True)
        cmds.setAttr("L_armFK_0" + str(P) + "_CCShape.overrideEnabled", True )
        cmds.setAttr("L_armFK_0" + str(P) + "_CCShape.overrideColor", 6 )
        
        cmds.circle (r= 2*GlobalMult ,nr=(1, 0, 0), n= "R_armFK_0" +str(P) + "_CC", ch= 0 )
        cmds.group  ("R_armFK_0" +str(P) + "_CC", n="R_armFK_0" +str(P) + "_GRP")
        cmds.parentConstraint ("R_arm_0" +str(P) + "_FK", "R_armFK_0" +str(P) + "_GRP"  )
        cmds.delete ("R_armFK_0"+str(P)+ "_GRP_parentConstraint1" )
        cmds.makeIdentity ("R_armFK_0" +str(P) + "_CC", apply = True, t = True)
        cmds.setAttr("R_armFK_0" + str(P) + "_CCShape.overrideEnabled", True )
        cmds.setAttr("R_armFK_0" + str(P) + "_CCShape.overrideColor", 13 )
        
    
    cmds.parent ("L_armFK_01_GRP", "L_clavicule_01_CC")
    cmds.parent ( "L_armFK_02_GRP","L_armFK_01_CC")
    cmds.parent ( "L_armFK_03_GRP","L_armFK_02_CC")
   
    cmds.parent ("R_armFK_01_GRP", "R_clavicule_01_CC")
    cmds.parent ( "R_armFK_02_GRP","R_armFK_01_CC")
    cmds.parent ( "R_armFK_03_GRP","R_armFK_02_CC")
    
    cmds.parentConstraint ("L_clavicule_01_CC","L_arm_1")
    cmds.parentConstraint ("L_armFK_01_CC","L_arm_01_FK")
    cmds.parentConstraint ("L_armFK_02_CC","L_arm_02_FK")
    cmds.parentConstraint ("L_armFK_03_CC","L_arm_03_FK")
    
    cmds.parentConstraint ("R_clavicule_01_CC","R_arm_1")
    cmds.parentConstraint ("R_armFK_01_CC","R_arm_01_FK")
    cmds.parentConstraint ("R_armFK_02_CC","R_arm_02_FK")
    cmds.parentConstraint ("R_armFK_03_CC","R_arm_03_FK")
        
        
    #IK
    
    cmds.curve(n="L_armIK_CC" , d=1, p=[(1, 1, 1),(1,1,-1) ,(1, -1, -1) ,(1, -1, 1) ,(-1, -1, 1) ,(-1, 1, 1) ,(1, 1, 1) ,(1, -1, 1) ,(-1, -1, 1) ,(-1, -1, -1) ,(-1, 1, -1) ,(1, 1, -1) ,(1, -1, -1) ,(-1, -1, -1) ,(-1, 1, -1) ,(-1, 1, 1)], k = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])
    cmds.group ("L_armIK_CC", n= "L_armIK_GRP")
    cmds.pointConstraint ("L_arm_03_IK", "L_armIK_GRP")
    cmds.delete ("L_armIK_GRP_pointConstraint1")
    cmds.orientConstraint ("L_arm_02_IK", "L_armIK_GRP")
    cmds.delete ("L_armIK_GRP_orientConstraint1")        
   
   
    cmds.curve(n="R_armIK_CC" , d=1, p=[(1, 1, 1),(1,1,-1) ,(1, -1, -1) ,(1, -1, 1) ,(-1, -1, 1) ,(-1, 1, 1) ,(1, 1, 1) ,(1, -1, 1) ,(-1, -1, 1) ,(-1, -1, -1) ,(-1, 1, -1) ,(1, 1, -1) ,(1, -1, -1) ,(-1, -1, -1) ,(-1, 1, -1) ,(-1, 1, 1)], k = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])
    cmds.group ("R_armIK_CC", n= "R_armIK_GRP")
    cmds.pointConstraint ("R_arm_03_IK", "R_armIK_GRP")
    cmds.delete ("R_armIK_GRP_pointConstraint1")
    cmds.orientConstraint ("R_arm_02_IK", "R_armIK_GRP")
    cmds.delete ("R_armIK_GRP_orientConstraint1")        
    
    cmds.parent ("L_ArmIKrp", "L_armIK_CC")
    cmds.parent ("R_ArmIKrp", "R_armIK_CC")
    
    cmds.orientConstraint ("L_armIK_CC","L_arm_03_IK", mo= True)
    cmds.orientConstraint ("R_armIK_CC","R_arm_03_IK", mo= True)

    cmds.scale(GlobalMult,GlobalMult,GlobalMult,'L_armIK_GRP', r = True)
    cmds.scale(GlobalMult,GlobalMult,GlobalMult,'R_armIK_GRP', r = True)
    
    cmds.setAttr ("L_armIK_CC.overrideEnabled", 1)
    cmds.setAttr ("R_armIK_CC.overrideEnabled", 1)

    cmds.setAttr ("L_armIK_CC.overrideColor", 6)
    cmds.setAttr ("R_armIK_CC.overrideColor", 13)    
    
    
    #Pole Vector

    cmds.polyPlane (n="L_PV_Plane", sh = 1, sw= 1)
    cmds.delete ("L_PV_Plane.vtx[3]")
    cmds.cluster ("L_PV_Plane.vtx[0]", n= "ShoulderCluster")
    cmds.cluster ("L_PV_Plane.vtx[1]" ,n= "ElbowCluster")
    cmds.cluster ("L_PV_Plane.vtx[2]", n= "WristCluster")
    
    cmds.pointConstraint ("L_arm_2","ShoulderClusterHandle")
    cmds.pointConstraint ("L_arm_3","ElbowClusterHandle")
    cmds.pointConstraint ("L_arm_4","WristClusterHandle")
    
    P01X = cmds.getAttr("L_arm_1.translateX")
    P01Y = cmds.getAttr("L_arm_1.translateY")
    P01Z = cmds.getAttr("L_arm_1.translateZ")    
    
    P02X = cmds.getAttr("L_arm_2.translateX") + P01X
    P02Y = cmds.getAttr("L_arm_2.translateY") + P01Y
    P02Z = cmds.getAttr("L_arm_2.translateZ") + P01Z
    
    P03X = cmds.getAttr("L_arm_3.translateX") + P02X
    P03Y = cmds.getAttr("L_arm_3.translateY") + P02Y
    P03Z = cmds.getAttr("L_arm_3.translateZ") + P02Z
    
    P04X = cmds.getAttr("L_arm_4.translateX") + P03X
    P04Y = cmds.getAttr("L_arm_4.translateY") + P03Y
    P04Z = cmds.getAttr("L_arm_4.translateZ") + P03Z
    
    cmds.moveVertexAlongDirection ("L_PV_Plane.vtx[1]", u= P02X+(P02X/2))
    PVposition = cmds.pointPosition ("L_PV_Plane.vtx[1]") 
    
    cmds.circle (n="L_PV01",nr=(0, 0, 1), r = GlobalMult)
    cmds.circle (n="L_PV02",nr=(0, 1, 0), r = GlobalMult)
    cmds.circle (n="L_PV03",nr=(1, 0, 0), r = GlobalMult)
    
    cmds.parent ("L_PV02Shape","L_PV01",r= True, s= True)
    cmds.parent ("L_PV03Shape","L_PV01",r= True, s= True)
    cmds.delete ("L_PV02","L_PV03")
    cmds.select ("L_PV01")
    cmds.group (n= "L_PV01_GRP", r= True)
    cmds.xform (t=PVposition)
    cmds.duplicate ("L_PV01_GRP", n= "R_PV_GRP")
    cmds.rename ("R_PV_GRP|L_PV01", "R_PV01")
    cmds.rename ("L_PV01_GRP", "L_PV0_GRP")
    cmds.move(0, 0, 0, ".scalePivot",".rotatePivot", absolute=True)
    cmds.setAttr ("R_PV_GRP.scaleX", -1)
    cmds.xform('R_PV_GRP', cp = True)
    
    
    cmds.select ("L_PV01","L_ArmIKrp")
    cmds.PoleVectorConstraint ()
    
    cmds.select ("R_PV01","R_ArmIKrp")
    cmds.PoleVectorConstraint ()
           
    cmds.setAttr("R_PV01Shape.overrideEnabled", True )
    cmds.setAttr("R_PV01Shape.overrideColor", 13 )
    cmds.setAttr("R_PV02Shape1.overrideEnabled", True )
    cmds.setAttr("R_PV02Shape1.overrideColor", 13 )     
    cmds.setAttr("R_PV03Shape1.overrideEnabled", True )
    cmds.setAttr("R_PV03Shape1.overrideColor", 13 )
    
    cmds.setAttr("L_PV01Shape.overrideEnabled", True )
    cmds.setAttr("L_PV01Shape.overrideColor", 6 )
    cmds.setAttr("L_PV02Shape.overrideEnabled", True )
    cmds.setAttr("L_PV02Shape.overrideColor", 6 )     
    cmds.setAttr("L_PV03Shape.overrideEnabled", True )
    cmds.setAttr("L_PV03Shape.overrideColor", 6 )
    
            
    #SwitchIKFK
    
    if cmds.objExists ("IK_FK_CC"):
        print "CurveControl IKFK  Exists"
    else:
        if cmds.objExists('makeTextCurves1'):
            cmds.rename ('makeTextCurves1','makeTextCurves1LOL')
        Texto = 'IK-FK'
        Color = 16
        Text = cmds.textCurves (n= Texto, t = Texto, o = True)    
        Lista= cmds.listRelatives (Text, ad = True)
        Shape = Lista[1]
        
        cmds.delete ('makeTextCurves1')
        
        for Curva in Lista:
            if cmds.objectType(str(Curva), isType='nurbsCurve'):
                curvaPapa = cmds.listRelatives(Curva, p = True)
                curvaAbuelo = cmds.listRelatives(curvaPapa, p = True)
                DobleCurva = cmds.listRelatives(curvaAbuelo)
                if len(DobleCurva)==2:
                    LetrasDobles.append (Curva)
                else:   
                    if not Shape == curvaPapa[0]:
                        cmds.makeIdentity (curvaAbuelo, a = True, t = True , r = True)
                        cmds.parent (Curva, Shape, r = True, s = True)
                    #Colores
                    cmds.setAttr (Curva+'.overrideEnabled', 1)
                    cmds.setAttr (Curva+'.overrideColor', Color)
                    
        cmds.parent (Shape,w=True)
        cmds.rename(Shape, 'IK_FK_CC')
        cmds.setAttr ("IK_FK_CC.overrideEnabled", 1)
        cmds.setAttr ("IK_FK_CC.overrideColor", 16)
        cmds.setAttr ('IK_FK_CC.rotateX', -90)
        cmds.xform(cp= True)
        cmds.setAttr ('IK_FK_CC.scaleX', GlobalMult)
        cmds.setAttr ('IK_FK_CC.scaleY', GlobalMult)
        cmds.setAttr ('IK_FK_CC.scaleZ', GlobalMult)
        cmds.makeIdentity(a=True, t = True, r = True, s=True)
        
    if cmds.objExists("IK_FK_CC.LeftArmIKFK")  :
        print 'existe Attr'  
    else:
        cmds.select ("IK_FK_CC")
        cmds.addAttr (ln= "LeftArmIKFK", min=0, max=1)
        cmds.setAttr ("IK_FK_CC.LeftArmIKFK", keyable = True)
        
    if cmds.objExists("IK_FK_CC.RightArmIKFK")  :
        print 'existe Attr'  
    else:
        cmds.select ("IK_FK_CC")
        cmds.addAttr (ln= "RightArmIKFK", min=0, max=1)
        cmds.setAttr ("IK_FK_CC.RightArmIKFK", keyable = True)
         
    
    cmds.expression (n="L_Arms_Switch", s = "L_arm_2.rotateX = (L_arm_01_FK.rotateX*IK_FK_CC.LeftArmIKFK)+(L_arm_01_IK.rotateX*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_2.rotateY = (L_arm_01_FK.rotateY*IK_FK_CC.LeftArmIKFK)+(L_arm_01_IK.rotateY*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_2.rotateZ = (L_arm_01_FK.rotateZ*IK_FK_CC.LeftArmIKFK)+(L_arm_01_IK.rotateZ*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_3.rotateX = (L_arm_02_FK.rotateX*IK_FK_CC.LeftArmIKFK)+(L_arm_02_IK.rotateX*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_3.rotateY = (L_arm_02_FK.rotateY*IK_FK_CC.LeftArmIKFK)+(L_arm_02_IK.rotateY*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_3.rotateZ = (L_arm_02_FK.rotateZ*IK_FK_CC.LeftArmIKFK)+(L_arm_02_IK.rotateZ*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_4.rotateX = (L_arm_03_FK.rotateX*IK_FK_CC.LeftArmIKFK)+(L_arm_03_IK.rotateX*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_4.rotateY = (L_arm_03_FK.rotateY*IK_FK_CC.LeftArmIKFK)+(L_arm_03_IK.rotateY*(1-IK_FK_CC.LeftArmIKFK));\nL_arm_4.rotateZ = (L_arm_03_FK.rotateZ*IK_FK_CC.LeftArmIKFK)+(L_arm_03_IK.rotateZ*(1-IK_FK_CC.LeftArmIKFK));\nL_armFK_03_CC.visibility = IK_FK_CC.LeftArmIKFK;\nL_armFK_02_CC.visibility = IK_FK_CC.LeftArmIKFK;\nL_armFK_01_CC.visibility = IK_FK_CC.LeftArmIKFK;\nL_armIK_CC.visibility = (1-IK_FK_CC.LeftArmIKFK);")
    cmds.expression (n="R_Arms_Switch", s = "R_arm_2.rotateX = (R_arm_01_FK.rotateX*IK_FK_CC.RightArmIKFK)+(R_arm_01_IK.rotateX*(1-IK_FK_CC.RightArmIKFK));\nR_arm_2.rotateY = (R_arm_01_FK.rotateY*IK_FK_CC.RightArmIKFK)+(R_arm_01_IK.rotateY*(1-IK_FK_CC.RightArmIKFK));\nR_arm_2.rotateZ = (R_arm_01_FK.rotateZ*IK_FK_CC.RightArmIKFK)+(R_arm_01_IK.rotateZ*(1-IK_FK_CC.RightArmIKFK));\nR_arm_3.rotateX = (R_arm_02_FK.rotateX*IK_FK_CC.RightArmIKFK)+(R_arm_02_IK.rotateX*(1-IK_FK_CC.RightArmIKFK));\nR_arm_3.rotateY = (R_arm_02_FK.rotateY*IK_FK_CC.RightArmIKFK)+(R_arm_02_IK.rotateY*(1-IK_FK_CC.RightArmIKFK));\nR_arm_3.rotateZ = (R_arm_02_FK.rotateZ*IK_FK_CC.RightArmIKFK)+(R_arm_02_IK.rotateZ*(1-IK_FK_CC.RightArmIKFK));\nR_arm_4.rotateX = (R_arm_03_FK.rotateX*IK_FK_CC.RightArmIKFK)+(R_arm_03_IK.rotateX*(1-IK_FK_CC.RightArmIKFK));\nR_arm_4.rotateY = (R_arm_03_FK.rotateY*IK_FK_CC.RightArmIKFK)+(R_arm_03_IK.rotateY*(1-IK_FK_CC.RightArmIKFK));\nR_arm_4.rotateZ = (R_arm_03_FK.rotateZ*IK_FK_CC.RightArmIKFK)+(R_arm_03_IK.rotateZ*(1-IK_FK_CC.RightArmIKFK));\nR_armFK_03_CC.visibility = IK_FK_CC.RightArmIKFK;\nR_armFK_02_CC.visibility = IK_FK_CC.RightArmIKFK;\nR_armFK_01_CC.visibility = IK_FK_CC.RightArmIKFK;\nR_armIK_CC.visibility = (1-IK_FK_CC.RightArmIKFK);")
 

    cmds.setAttr ("IK_FK_CC.overrideEnabled", 1)
    cmds.setAttr ("IK_FK_CC.overrideColor", 18)    
    
    #Organize the mess
    # Grouping and Organizing
    
    cmds.group ("L_armIK_GRP", "L_PV0_GRP", n="L_IKArm_GRP")
    cmds.group ("R_armIK_GRP", "R_PV_GRP", n="R_IKArm_GRP")
    cmds.group ("L_IKArm_GRP", "R_IKArm_GRP","L_clavicule_01_GRP","R_clavicule_01_GRP","L_arm_1","R_arm_1",n= "Connect this to the rest of the rig ARMS")
    cmds.group ("Connect_this_to_the_rest_of_the_rig_ARMS", n="RdM_AutoARMS" )
    
    cmds.delete('IK_FKShape','L_PV_Plane', 'ShoulderClusterHandle','ElbowClusterHandle','WristClusterHandle')
    
    cmds.select('IK_FK_CC')
    cmds.move (-1.195,0,10)   
    
   
#Lock and hide 
  
      
   #FK
   
    cmds.select ('L_armFK_03_CC','L_armFK_02_CC','L_armFK_01_CC','R_armFK_03_CC','R_armFK_02_CC','R_armFK_01_CC')
    FK = cmds.ls(sl=True)
   
    for T in FK:            
        cmds.setAttr(str(T)+'.translateX',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.translateY',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.translateZ',lock = True, keyable = False, channelBox = False)     
       
        cmds.setAttr(str(T)+'.scaleX',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleY',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleZ',lock = True, keyable = False, channelBox = False)

       
        cmds.setAttr(str(T)+'.visibility',lock = True, keyable = False, channelBox = False)
   
   #IK, Clavicule
   
    cmds.select ('L_armIK_CC', 'R_armIK_CC','R_clavicule_01_CC ','L_clavicule_01_CC')
    IK = cmds.ls(sl=True)
   
    for T in IK:            

        cmds.setAttr(str(T)+'.scaleX',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleY',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleZ',lock = True, keyable = False, channelBox = False)

       
        cmds.setAttr(str(T)+'.visibility',lock = True, keyable = False, channelBox = False)
   
   
   #Pole Vector   

    cmds.select ('L_PV01', 'R_PV01')
    PV = cmds.ls(sl=True)   

    for T in PV:   
             
        cmds.setAttr(str(T)+'.rotateX',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.rotateY',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.rotateZ',lock = True, keyable = False, channelBox = False)     
       
        cmds.setAttr(str(T)+'.scaleX',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleY',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleZ',lock = True, keyable = False, channelBox = False)

       
        cmds.setAttr(str(T)+'.visibility',lock = True, keyable = False, channelBox = False)   
      
    print 'DONE'
 
    Plane = cmds.nurbsPlane (ax = (0, 1, 0), w = 2, lr = 0.5, d = 3, u = 16, v = 1,  n = 'L_UpperPlane')
    cmds.move(-1, 0, 0, Plane[0]+".scalePivot",Plane[0]+".rotatePivot", absolute=True)    
    Parent = cmds.pointConstraint ('L_arm_2', Plane, mo=0)
    cmds.delete(Parent)
    cmds.setAttr("L_UpperPlane.rotateX" , 90)
    

################# RIBBON
#Steps

'''
https://www.youtube.com/watch?v=0PSuSs9dJ94
Plano con 16 divisiones
un foliculo por plano
un foliculo controla cada joint
Crear el Shoulder, Elbow y Wrist para controlar el plano (grupo, control, joint Controller)
Elbow Follow Group (pivote en el centro)
Shoulder y mu;eca point constrint a elbow follow group
Crear 2 controles en medio de shoulder y elbow y 2 controles en medio de wlbow y wrist (secondary controls) (grupo, control, grupo joint Controller) Dejar dentro de follow group



Point constraint a grupo de los controles del medio (2,1)
Aim Constraint del shoulder nada mas al grupo de los del medio (cuidar X negativo y X positivo min22) +1 para shoulder elbow y -1 para elbow wrist

Agarrar los joints controladores y bind al plano
Parent Constraint de los Joints del sistema al los grupos ribbon de cada parte

QuitarExpresion y hacer switch con constraints y nodos
Anadir Stretchy al IK y FK
'''

def RibbonArms(*args):

    #####Plane Here
    
     
   #Joints on plane 
   
    def PutMeOn (Side,PlaneName, *args):
        
       cmds.select(cl=1)
       UpJoint1 = cmds.joint (n = Side +'_'+ PlaneName +'_Up_Bind01')
       cmds.select(cl=1)
       UpJoint2 = cmds.joint (n = Side +'_'+ PlaneName +'_Up_Bind02')
       cmds.select(cl=1)
       UpJoint3 = cmds.joint (n = Side +'_'+ PlaneName +'_Up_Bind03')
       cmds.select(cl=1)
       UpJoint4 = cmds.joint (n = Side +'_'+ PlaneName +'_Up_Bind01')
       cmds.select(cl=1)
       UpJoint5 = cmds.joint (n = Side +'_'+ PlaneName +'_Up_Bind02')

       
       POSI1 = cmds.shadingNode('pointOnSurfaceInfo', asUtility=True, name= Side +'_'+ PlaneName +'_PointOnSurface_01')
       cmds.setAttr (str(POSI1)+'.parameterV',0.5)
       cmds.setAttr (str(POSI1)+'.parameterU',0)
       cmds.connectAttr (str(Side)+'_'+str(PlaneName)+'.worldSpace[0]', (POSI1)+'.inputSurface', f = 1)
       cmds.connectAttr (str (POSI1)+'.position', str(UpJoint1)+'.translate', f = 1)

       
       POSI2 = cmds.shadingNode('pointOnSurfaceInfo', asUtility=True, name= Side +'_'+ PlaneName +'_PointOnSurface_02')
       cmds.setAttr (str(POSI2)+'.parameterV',0.5)
       cmds.setAttr (str(POSI2)+'.parameterU',0.25)
       cmds.connectAttr (str(Side)+'_'+str(PlaneName)+'.worldSpace[0]', (POSI2)+'.inputSurface', f = 1)
       cmds.connectAttr (str (POSI2)+'.position', str(UpJoint2)+'.translate', f = 1)

       POSI3 = cmds.shadingNode('pointOnSurfaceInfo', asUtility=True, name= Side +'_'+ PlaneName +'_PointOnSurface_03')
       cmds.setAttr (str(POSI3)+'.parameterV',0.5)
       cmds.setAttr (str(POSI3)+'.parameterU',0.5)
       cmds.connectAttr (str(Side)+'_'+str(PlaneName)+'.worldSpace[0]', (POSI3)+'.inputSurface', f = 1)
       cmds.connectAttr (str (POSI3)+'.position', str(UpJoint3)+'.translate', f = 1)
       
       POSI4 = cmds.shadingNode('pointOnSurfaceInfo', asUtility=True, name= Side +'_'+ PlaneName +'_PointOnSurface_04')
       cmds.setAttr (str(POSI4)+'.parameterV',0.5)
       cmds.setAttr (str(POSI4)+'.parameterU',0.75)
       cmds.connectAttr (str(Side)+'_'+str(PlaneName)+'.worldSpace[0]', (POSI4)+'.inputSurface', f = 1)
       cmds.connectAttr (str (POSI4)+'.position', str(UpJoint4)+'.translate', f = 1)       

       POSI5 = cmds.shadingNode('pointOnSurfaceInfo', asUtility=True, name= Side +'_'+ PlaneName +'_PointOnSurface_05')
       cmds.setAttr (str(POSI5)+'.parameterV',0.5)
       cmds.setAttr (str(POSI5)+'.parameterU',1)
       cmds.connectAttr (str(Side)+'_'+str(PlaneName)+'.worldSpace[0]', (POSI5)+'.inputSurface', f = 1)
       cmds.connectAttr (str (POSI5)+'.position', str(UpJoint5)+'.translate', f = 1)
       
    PutMeOn('L', 'UpperPlane')     
    PutMeOn('R', 'UpperPlane')    
    PutMeOn('L', 'LowerPlane')     
    PutMeOn('R', 'LowerPlane')  
 
  

   #Joints with Controlers for contolling the plane
   
    def SideJointsRibbon (Side):

         
        Controljointlist =[]
        GlobalMult = cmds.floatSliderGrp (RadioControlador, q = True, value = 2)
            
        def jointWithController(Name,Position,*args):
            cmds.select(cl=1)
                
            RibbonController = cmds.circle (n = str(Side) + '_' +str(Name) + '_CC', r = 1.5 * GlobalMult, nr = (1,0,0))
            OffsetGRP = cmds.group (RibbonController, n = str(Side) + '_' +str(Name) + '_GroupOffset')

            JointCC = cmds.joint (n = str(Side) + '_' +str(Name) + '_JointController')
            
            
            cmds.parent(JointCC, RibbonController[0])
            if Side == 'L':
                cmds.setAttr(str(RibbonController[0])+'.overrideEnabled', 1)
                cmds.setAttr(str(RibbonController[0])+'.overrideColor', 6)
            elif Side == 'R':
                cmds.setAttr(str(RibbonController[0])+'.overrideEnabled', 1)
                cmds.setAttr(str(RibbonController[0])+'.overrideColor', 13)  
            Controljointlist.append (JointCC)
                      
            
            
        jointWithController('ShoulderRibbon',-8)
        
        jointWithController('UpperArm01',-5)
        jointWithController('UpperArm02',-3)
        
        jointWithController('ElbowRibbon',0)
        
        jointWithController('LowerArm01',5)
        jointWithController('LowerArm02',3)
                        
        jointWithController('WristRibbon',8)

        print 'ControlJoints List' + str(Controljointlist) 

    SideJointsRibbon ('L')
     
#ImagesPaths
imagePath  = cmds.internalVar(usd = True) 
Path = imagePath + 'RdMTools/'
Icons = Path + 'icons/'


    
#Window
cmds.window( "AutoArms", width=250, title="AutoArms" , toolbox = True  )
cmds.columnLayout( adjustableColumn=True )
cmds.separator(h = 10)
cmds.symbolButton(image=Icons + 'Locator.png', c = LocatorsBtn)
cmds.separator(h = 10)
cmds.symbolButton(image=Icons + 'Joint.png', c = JointsBtn)
cmds.separator(h = 10)
RadioControlador = cmds.floatSliderGrp (l = 'Size:', min = 1 , max = 20, field = True, v = 1, hlc = (1,0,0))
cmds.separator(h = 10)
cmds.button( label='Create IK FK Arms', command=IKFK, bgc = (0.8,0,0), h = 40)
cmds.separator(h = 10)
cmds.button( label='AddRibbon', command=RibbonArms, bgc = (0.8,0,0), h = 40)
cmds.separator(h = 10)
cmds.text( label='By: Render de Martes', fn ='fixedWidthFont')
cmds.text( label='info@renderdemartes.com', fn ='fixedWidthFont')
cmds.showWindow("AutoArms")




'''
09/10/18

RdMAutoSpine v1.0
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMAutoSpine
reload (RdMAutoSpine)
'''

from maya import cmds


if cmds.window ("AutoSpine", exists = True):
    cmds.deleteUI ("AutoSpine")



###JOINTS LOCATORS

def LocatorsBtn(*args):
    
    jointsNum = cmds.intSliderGrp (locatorNum, q = True, value = 5)
    
    for X in range (jointsNum):
    
        cmds.select (clear = True)        
        cmds.CreateLocator ()
        cmds.move (0, 2.5*X, 0)
        cmds.select (clear = True)           
        cmds.rename ("locator1", "Spine_0" + str (X + 1) + "_LOC")


 
    cmds.select (clear = True)
    
def JointsBtn(*args):

    jointsNum = cmds.intSliderGrp (locatorNum, q = True, value = 5)
    
    cmds.select (clear = True)  

    for X in range (jointsNum):
        cmds.rename ("Spine_0" + str (X + 1) + "_LOC", 'locator' + str (X + 1) )      
         
    
    for X in range (1, jointsNum + 1):  
                
        cmds.joint (n = "Spine_" + str(X))
        cmds.pointConstraint ("locator" + str (X) , "Spine_" + str(X))
        cmds.delete ("Spine_" + str(X) + "_pointConstraint1")
        cmds.delete ("locator" + str (X))
        
        
    cmds.select (clear = True)
    
    whileX = 1
    
    while cmds.objExists("Spine_" + str(whileX)):
        
        cmds.select ('Spine_' + str(whileX), add = True, tgl = True)
        whileX = whileX +1
       
    cmds.joint(e= True, zso=True, oj= "xyz", sao = "zup")
        
    
    cmds.select (clear = True)   
    

    #COG
    
    cmds.duplicate ('Spine_1', n = 'COG')
    cmds.delete  ('COG|Spine_2')
    cmds.setAttr ("COG.radius", 2)
    
    # ReverseSpine 
    cmds.duplicate ('Spine_1', n = 'ReverseSpine_JJ')
    cmds.delete ('ReverseSpine_JJ|Spine_2|Spine_3')
    cmds.rename (' ReverseSpine_JJ|Spine_2','ReverseSpine_JE')
    
    Minus = cmds.getAttr ("ReverseSpine_JE.translateX")
    cmds.setAttr ("ReverseSpine_JE.translateX",  Minus * -1)
    
    cmds.parent ('Spine_1','COG')
    cmds.parent ('ReverseSpine_JJ','COG')
    
    
def SpineBtn(*args): 

    jointsNum = cmds.intSliderGrp (locatorNum, q = True, value = 5)
    
    
    #CopyJoints for the SpineLater
    
    cmds.duplicate ('Spine_1', n = 'SpineStart_JC', po = True )
    cmds.duplicate ('Spine_' + str (jointsNum), n = 'SpineEnd_JC', po = True )
    cmds.setAttr ('SpineStart_JC.radius', 3)
    cmds.setAttr ('SpineEnd_JC.radius', 3)
    
    cmds.parent ('SpineEnd_JC','SpineStart_JC')
    cmds.joint (n = 'dummyJoint')
    cmds.select ('SpineEnd_JC','SpineStart_JC', 'dummyJoint')
    cmds.joint(e= True, zso=True, oj= "xyz", sao = "zup")
    cmds.delete('dummyJoint')
    

############################
    GlobalMult  = cmds.floatSliderGrp (RadioControlador, q = True, value = 2)
    radio =  GlobalMult #cmds.getAttr ('L_Leg_IK.translateY') - cmds.getAttr ('L_Knee_IK.translateY')   
############################

#Reverse Spine Controls

    Distance1 = cmds.getAttr ('Spine_1.translateX') 
    Distance2 = cmds.getAttr ('Spine_2.translateX')
    COGPos = cmds.getAttr ('COG.translateY')
    

    if cmds.objExists ('ReverseSpine_JJ'):
        Distance2 = cmds.getAttr ('Spine_2.translateX') 
        
        cmds.circle (n= 'ReverseSpine_CC',r = (Distance2 - Distance1)*2*GlobalMult , nr= (1,0,0))
        cmds.group (n = 'ReverseSpine_GRP')
        cmds.pointConstraint ('ReverseSpine_JJ','ReverseSpine_GRP', mo = False)
        cmds.orientConstraint ('ReverseSpine_JJ','ReverseSpine_GRP', mo = False)
        cmds.delete ('ReverseSpine_GRP_pointConstraint1')
        cmds.delete ('ReverseSpine_GRP_orientConstraint1')
        MoveY = cmds.xform( 'ReverseSpine_JE', q=True, ws=True, t=True )
        cmds.select ('ReverseSpine_GRP')
        cmds.move ( 0, MoveY[1],0)
        cmds.setAttr ('ReverseSpine_CC.overrideEnabled', 1)
        cmds.setAttr ('ReverseSpine_CC.overrideColor', 14)
        cmds.xform ('ReverseSpine_CC', piv = (0,COGPos,0), ws = True)
        

    
    cmds.pointConstraint ('ReverseSpine_CC', 'ReverseSpine_JJ', mo = True)
    cmds.orientConstraint ('ReverseSpine_CC', 'ReverseSpine_JJ', mo = True)


#COG Controls 
  
    cmds.nurbsSquare (n= 'COG_CC', nr = (1,0,0),sl1=(Distance2 - Distance1)*4, sl2=(Distance2 - Distance1)*4)
    cmds.parent ('leftCOG_CCShape','bottomCOG_CCShape','rightCOG_CCShape','topCOG_CC', r= True, s = True)
    cmds.rename ('COG_CC', 'COG_GRP')
    cmds.rename ('topCOG_CC', 'COG_CC')
    cmds.delete ('leftCOG_CC','bottomCOG_CC','rightCOG_CC')
    cmds.parentConstraint ('COG', 'COG_GRP')
    cmds.delete ('COG_GRP_parentConstraint1')
    cmds.parentConstraint ('COG_CC', 'COG')
    cmds.scale (GlobalMult,GlobalMult,GlobalMult, 'COG_GRP')
    cmds.setAttr ('COG_CC.overrideEnabled', 1)
    cmds.setAttr ('COG_CC.overrideColor', 9)
        
    #SpineControls
    
    Distance1 = cmds.getAttr ('Spine_1.translateX') 
    Distance2 = cmds.getAttr ('Spine_2.translateX')    
    SpineX = 1
    
    while cmds.objExists("Spine_" + str(SpineX)):    
    
        cmds.circle (n= "Spine" + str(SpineX) + '_CC',r = (Distance2 - Distance1)*2*GlobalMult, nr= (1,0,0))
        cmds.group (n = "Spine" + str(SpineX) + '_GRP')
        cmds.pointConstraint ("Spine_" + str(SpineX),"Spine" + str(SpineX) + '_GRP' ,mo = False)
        cmds.orientConstraint ("Spine_" + str(SpineX),"Spine" + str(SpineX) + '_GRP' ,mo = False)
        cmds.delete ("Spine" + str(SpineX) + '_GRP' + '_pointConstraint1')
        cmds.delete ("Spine" + str(SpineX) + '_GRP' + '_orientConstraint1')
        cmds.setAttr ('Spine' + str(SpineX) + '_CC'+'.overrideEnabled', 1)
        cmds.setAttr ('Spine' + str(SpineX) + '_CC'+'.overrideColor', 17)
        cmds.setAttr("Spine" + str(SpineX)+'_CC.scaleX',lock = True, keyable = False, channelBox = False)
        cmds.setAttr("Spine" + str(SpineX)+'_CC.scaleY',lock = True, keyable = False, channelBox = False)
        cmds.setAttr("Spine" + str(SpineX)+'_CC.scaleZ',lock = True, keyable = False, channelBox = False)
       
        cmds.setAttr("Spine" + str(SpineX)+'_CC.visibility',lock = True, keyable = False, channelBox = False) 
        
        SpineX = SpineX + 1
        
        
       
    SpineX = SpineX - 1    
    
    cmds.delete ("Spine" + str(SpineX) + '_GRP')
    
    SpineX = SpineX - 1 
    

    
    #Shape the Curves 
    
    cmds.select ('Spine1_CC.cv[7]','Spine1_CC.cv[3]')
    cmds.move (0, (Distance2 - Distance1) ,0, r = True)
    cmds.select ("Spine" + str(SpineX) + '_CC.cv[7]',"Spine" + str(SpineX) + '_CC.cv[3]')
    cmds.move (0, -(Distance2 - Distance1) ,0, r = True)

    cmds.select ('ReverseSpine_CC.cv[7]','ReverseSpine_CC.cv[3]')
    cmds.move (0, -(Distance2 - Distance1)/2 ,0, r = True)    

    #Create hierarchy
    
    ParentNum = jointsNum - 1
          
    while cmds.objExists ('Spine'+ str (ParentNum) + '_CC'):
        
        cmds.parent ('Spine'+ str (ParentNum) + '_GRP','Spine'+ str (ParentNum-1) + '_CC')    
        
        if ParentNum > 2:
            ParentNum = ParentNum - 1
        else:
            ParentNum = ParentNum - 2
    
    cmds.parent ('Spine1_GRP', 'COG_CC')
    cmds.parent ('ReverseSpine_GRP', 'COG_CC')

    
    
    #IK Stuff
       
        
    cmds.curve (n= "SpineIK_CC",d=1, p=[(0,0,0),(10,0,0)], k = (0,1))
    cmds.cluster ('SpineIK_CC.cv[0]', n = 'SpineStartCluster01')
    cmds.cluster ('SpineIK_CC.cv[1]', n = 'SpineEndCluster02')
    
    cmds.pointConstraint ('SpineStart_JC','SpineStartCluster01Handle')
    cmds.pointConstraint ('SpineEnd_JC','SpineEndCluster02Handle')
    
    cmds.delete ('SpineIK_CC', ch = True )
    cmds.rebuildCurve ('SpineIK_CC', s = jointsNum - 1, d = 3 )
    
    cmds.delete ('SpineStartCluster01Handle','SpineEndCluster02Handle')

    IkRef = jointsNum - 1    

    cmds.parent ('SpineEnd_JC', 'Spine' + str (IkRef)+'_CC')       
    cmds.parent ('SpineStart_JC', 'Spine1_CC' )
    
        
    cmds.skinCluster("SpineStart_JC","SpineEnd_JC", "SpineIK_CC", tsb= True,  nw=1, wd = 0, mi = 5, omi = True, dr = 4, rui = True )
    
    
    cmds.ikHandle (n= "Spine_IK", sj="Spine_1", ee="Spine_" + str (jointsNum), c= 'SpineIK_CC' ,sol = "ikSplineSolver", ccv= False , pcv = False)
 

    
    #RenameLastCurve
    
    cmds.rename("Spine" + str(SpineX)+ '_CC', 'Spine_End_CC')
    
    #IK Twist
    cmds.setAttr ("SpineIK_CC.inheritsTransform", 0)
                
    cmds.setAttr ("Spine_IK.dTwistControlEnable", 1)
    cmds.setAttr ("Spine_IK.dWorldUpType", 4)    
    
    cmds.connectAttr ("SpineStart_JC.worldMatrix[0]", "Spine_IK.dWorldUpMatrix", f=True)
    cmds.connectAttr ("SpineEnd_JC.worldMatrix[0]" , "Spine_IK.dWorldUpMatrixEnd", f=True )
    
    #Changing last curve pivot
    SpineEnd_JCTranslatePivot = cmds.getAttr ('SpineEnd_JC.translateX')    
    cmds.move (0, SpineEnd_JCTranslatePivot , 0 , 'Spine_End_CC.rotatePivot', r = True)
    
    #Orginizaing 
    
    cmds.select ('COG_CC', 'ReverseSpine_CC')
    IK = cmds.ls(sl=True)
   
    for T in IK:            

        cmds.setAttr(str(T)+'.scaleX',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleY',lock = True, keyable = False, channelBox = False)
        cmds.setAttr(str(T)+'.scaleZ',lock = True, keyable = False, channelBox = False)
       
        cmds.setAttr(str(T)+'.visibility',lock = True, keyable = False, channelBox = False)
        
    #Colors
    
    cmds.setAttr ('Spine1' + '_CC'+'.overrideEnabled', 1)
    cmds.setAttr ('Spine1' + '_CC'+'.overrideColor', 14)
    
    cmds.setAttr ('Spine_End_CC.overrideEnabled', 1)
    cmds.setAttr ('Spine_End_CC'+'.overrideColor', 14)
    
    cmds.select ('SpineIK_CC', 'Spine_IK')
    cmds.group (n = 'IK_GRP')

        
    cmds.group ('COG','COG_GRP','IK_GRP', n="RdM_AutoSPINE")
    cmds.select ('Spine_1', hi =True )
    cmds.select ('Spine_' +str (jointsNum), tgl = True)
    cmds.select ('ReverseSpine_JJ', tgl = True)

    cmds.sets (n= 'BindThisToSpine')    

    cmds.rename ('Spine_' +str (jointsNum), 'Spine_ConnectToArms')

    cmds.select (cl = True)

#ImagesPaths
imagePath  = cmds.internalVar(usd = True) 
Path = imagePath + 'RdMTools/'
Icons = Path + 'icons/'

    
    #Window

cmds.window( "AutoSpine", width=250, title="AutoSpine", toolbox = True  )
cmds.columnLayout( adjustableColumn=True )
cmds.separator (h = 20)
locatorNum = cmds.intSliderGrp (l = 'Spine joints: ', min = 3 , max = 10, field = True, v = 5, hlc = (0.8,0.2,0.5) )
cmds.separator(h = 10)
cmds.symbolButton(image=Icons + 'Locator.png', c = LocatorsBtn)
cmds.separator(h = 10)
cmds.symbolButton(image=Icons + 'Joint.png', c = JointsBtn)
cmds.separator(h = 10)
cmds.separator(h = 10)
RadioControlador = cmds.floatSliderGrp (l = 'Size:', min = 1 , max = 20, field = True, v = 1, hlc = (0.8,0.2,0.5))
cmds.separator(h = 10)
cmds.button( label='Create Spine', command=SpineBtn, hlc = (0.8,0.2,0.5), bgc = (0.8,0.2,0.5) , h = 40 )
cmds.separator(h = 10)
cmds.text( label='By: Render de Martes', fn ='fixedWidthFont')
cmds.text( label='info@renderdemartes.com', fn ='fixedWidthFont')
cmds.showWindow("AutoSpine")

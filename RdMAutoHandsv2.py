'''
12/09/18
RdMAutoHands v2.0
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMAutoHandsv2
reload (RdMAutoHandsv2)
'''
from maya import cmds

if cmds.window ("AutoHandV2", exists = True):
    cmds.deleteUI ("AutoHandV2")

#Joints

def CreateJoints (*args):
    cmds.joint (n ='L_Palm')
    cmds.select (cl = True)
    


    def genericFinger (name, phalanges,x,y,z,mult):
        cmds.select ('L_Palm')
        for f in range(phalanges):
            cmds.joint (n ='L_' + str (name) + '_' + str (f) + '_JJ')
            cmds.move(f*mult,0,0)
            cmds.move (x,y,z, r = True)
            cmds.setAttr ('L_' + str (name) + '_' + str (f) + '_JJ'+'.segmentScaleCompensate', 0)
            
        cmds.select (cl = True)
        
        
    IndexCheckOn = cmds.checkBox(IndexCheck, q = True, v = True)        
    if (IndexCheckOn): 
        genericFinger ('Index', 5,3,0,5,3)
    
    MiddleCheckOn = cmds.checkBox(MiddleCheck, q = True, v = True)        
    if (MiddleCheckOn): 
        genericFinger ('Middle', 5,3,0,0,5)
        
    RingCheckOn = cmds.checkBox(RingCheck, q = True, v = True)        
    if (RingCheckOn): 
        genericFinger ('Ring', 5,3,0,-5,4)
    
    PinkyCheckOn = cmds.checkBox(PinkyCheck, q = True, v = True)        
    if (PinkyCheckOn): 
        genericFinger ('Pinky', 5,3,0,-10,3)
        
        
    ThumbCheckOn = cmds.checkBox(ThumbCheck, q = True, v = True)        
    if (ThumbCheckOn): 
        genericFinger ('Thumb', 4,0,0,10,3)
        cmds.setAttr ('L_Thumb_0_JJ.rotateY', -90)

    if cmds.objExists ('L_arm_4'):
        ParentPalm= cmds.parentConstraint ('L_arm_4', 'L_Palm', mo =False)
        cmds.delete(ParentPalm)
#Controladores

def CreateControllers (*args):
    
############################
    GlobalMult  = cmds.floatSliderGrp (RadioControlador, q = True, value = 2)/2############################
    
    #Radio Controlador
    radio = 1* GlobalMult
    
    cmds.mirrorJoint ('L_Palm', sr = ('L_','R_'), myz = True, mb = True)
    cmds.select(clear = True)
    cmds.select('L_Palm','L_Palm', hi = True)
    #cmds.joint(e= True, zso=True, oj= "xzy", sao = "zdown")
    cmds.select(clear = True)    
    L_GrupoMano = cmds.group(n = "L_Fingers", w = True, em = True)
    R_GrupoMano = cmds.group(n = "R_Fingers", w = True, em = True)    
    jointList = []

    def FingerControl(finger):
        
        def ControllersCreator (side):
                        
            if cmds.objExists (str(side)+ str (finger)+'_0_JJ'):
                
                X = 0
                
                
                while cmds.objExists(str(side)+ str (finger)+'_'+ str(X)+ '_JJ'):
                                    
                    JointDedo = str(side)+ str (finger)+'_'+ str(X)+ '_JJ'
                    Circulo = cmds.circle(r = radio, n = str(side)+ str (finger)+'_'+ str(X)+ '_CC', nr = (1,0,0))
                    CirculoControl = cmds.group(Circulo , n = str(side)+ str (finger)+'_'+ str(X)+ '_GRP')
                    ParentSet = cmds.parentConstraint(JointDedo, CirculoControl, mo = False)
                    cmds.delete(ParentSet)
                    cmds.orientConstraint (Circulo, JointDedo)
                    
                    if side == 'L_':
                        cmds.setAttr (str(side)+ str (finger)+'_'+ str(X)+ '_CC'+'.overrideEnabled', 1)
                        cmds.setAttr (str(side)+ str (finger)+'_'+ str(X)+ '_CC'+'.overrideColor', 6)
                    if side == 'R_':
                        cmds.setAttr (str(side)+ str (finger)+'_'+ str(X)+ '_CC'+'.overrideEnabled', 1)
                        cmds.setAttr (str(side)+ str (finger)+'_'+ str(X)+ '_CC'+'.overrideColor', 13)
                        
                    if cmds.objExists(str(side)+ str (finger)+'_'+ str(X - 1)+ '_CC'):
                        cmds.parent (CirculoControl,str(side)+ str (finger)+'_'+ str(X - 1)+ '_CC')
                    
                    
                    jointList.append (JointDedo)
                    
                    X = X + 1
                    
                    
                #Grupo Dedos    
                Grupo = cmds.group(n = str(side)+ str (finger)+ '_Group', w = True, em = True)
                cmds.parent(str(side)+ str (finger)+'_'+ str(0)+ '_GRP', Grupo)
                
                #GrupoMano
                cmds.parent(Grupo, str(side)+ "Fingers")
                
                #Delete last Controllers
                X = X -1 
                cmds.delete (str(side)+ str (finger) +'_'+ str (X)+ '_GRP')
                jointList.remove(str(side)+ str (finger) +'_'+ str (X)+ '_JJ')
                 
                
                    
        ControllersCreator("L_") 
        ControllersCreator("R_") 
                           
                
    FingerControl('Index')        
    FingerControl('Middle')
    FingerControl('Ring')        
    FingerControl('Pinky')
    FingerControl('Thumb')
    
    cmds.parent(L_GrupoMano, "L_Palm")
    cmds.parent(R_GrupoMano, "R_Palm")
    
    if cmds.objExists('L_arm_4'):
        cmds.parent('L_Palm','L_arm_4')
    
    if cmds.objExists('R_arm_4'):
        cmds.parent('R_Palm','R_arm_4')
    
    #Create Set
    print jointList
    cmds.select(jointList)
    cmds.select('L_Palm', 'R_Palm', add = True)    
    cmds.sets (n= 'BindThisToHands')    
    
    cmds.select (cl = True)

imagePath  = cmds.internalVar(usd = True) 
Path = imagePath + 'RdMTools/'
Icons = Path + 'icons/'

#Window
    
cmds.window( "AutoHandV2", width=250, title="AutoHands", toolbox = True )

cmds.columnLayout( adjustableColumn=True )
cmds.separator (h = 15)

cmds.frameLayout( label='Fingers' )

cmds.rowLayout(nc = 5)
ThumbCheck=cmds.checkBox (l = 'Thumb', v = 1, hlc = (1,0,0))
IndexCheck=cmds.checkBox (l = 'Index', v = 1, hlc = (1,0,0))
MiddleCheck=cmds.checkBox (l = 'Middle', v = 1, hlc = (1,0,0))
RingCheck=cmds.checkBox (l = 'Ring', v = 1, hlc = (1,0,0))
PinkyCheck=cmds.checkBox (l = 'Pinky', v = 1, hlc = (1,0,0))
cmds.setParent( '..' )
cmds.setParent( '..' )
cmds.columnLayout (adj = True)
cmds.separator (h = 15)

cmds.frameLayout( label='Create Joints' )

cmds.symbolButton( image=Icons + 'Joint.png', command=CreateJoints)
cmds.separator (h = 15)
RadioControlador = cmds.floatSliderGrp (l = 'Size:', min = 1 , max = 20, field = True, v = 1, hlc = (1,0,0))
cmds.separator (h = 15)
cmds.button( label='Fingers', command=CreateControllers , bgc = (1,0,0), h = 40)
cmds.separator (h = 15)
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow("AutoHandV2")

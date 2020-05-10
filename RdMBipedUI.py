'''
11/10/18
RdMBipedUI v1.0
By Esteban Rodriguez

www.renderdemartes.com

info@renderdemartes.com

import RdMBipedUI
reload (RdMBipedUI)
'''

from maya import cmds
from functools import partial
import pymel.core as pm

CharacterName = cmds.promptDialog(
                title='RdMTools UI',
                message='Character Name:',
                button=['CreateUI', 'Cancel'],
                defaultButton='CreateUI',
                cancelButton='Cancel',
                dismissString='Cancel',
                bgc = (1,1,10))

if CharacterName == 'CreateUI':
        text = cmds.promptDialog(query=True, text=True)
        Character = text  


  
#autodelete window 
if cmds.window ("RdMBipedUI", exists = True):
    cmds.deleteUI ("RdMBipedUI")
    
#create window
window = cmds.window ("RdMBipedUI", title= "RdM Biped UI Rig V1.0.0", w = 450, h = 400, mnb = 1, mxb = 0, sizeable = 0)

#creatre main layout 
mainLayout = cmds.columnLayout (w = 460, h = 588)
formLayout = cmds.formLayout (w = 460, h = 588)

#Path Image
imagePath  = cmds.internalVar(usd = True) 
ButtonImages=imagePath + str ("RdMTools/icons/")
Background = cmds.image(image= ButtonImages + 'Background.png')

#Def Buttons


def selectControls (controls, *args):    

    #Shift command
      
    mods = cmds.getModifiers()
    if (mods & 1) > 0:
        
        cmds.select(controls, add=True)   
        
    else:
    
        cmds.select (clear = True)
        cmds.select(controls, tgl=True)  


#Nombres de los controles
#select all the objects with name



if cmds.objExists(str(Character)): 
    Seleccion = cmds.select(str(Character), r=True) 
if cmds.objExists('*:' + str(Character)): 
    Seleccion = cmds.select('*:*:' + str(Character), r=True) 
    NAMESPACE = pm.selected()[0].namespace()
if cmds.objExists('*:*:' + str(Character)): 
    Seleccion = cmds.select('*:*:' + str(Character), r=True) 
    NAMESPACE = pm.selected()[0].namespace()
if cmds.objExists('*:*:*:' + str(Character)): 
    Seleccion = cmds.select('*:*:*:' + str(Character), r=True) 
    NAMESPACE = pm.selected()[0].namespace()
if cmds.objExists('*:*:*:*:' + str(Character)): 
    Seleccion = cmds.select('*:*:*:*:' + str(Character), r=True) 
    NAMESPACE = pm.selected()[0].namespace()
else:
    NAMESPACE = ''
    

print NAMESPACE


Head = str (NAMESPACE) + 'Head_CC'
Neck = str (NAMESPACE) + 'Neck_CC'

Spine1 = str (NAMESPACE) + 'Spine_End_CC'
Spine2 = str (NAMESPACE) + 'Spine3_CC'
Spine3 = str (NAMESPACE) + 'Spine2_CC'
Spine4 = str (NAMESPACE) + 'Spine1_CC'
COG = str (NAMESPACE) + 'COG_CC'
ReverseSpine = str (NAMESPACE) + 'ReverseSpine_CC'

L_Clavicule = str (NAMESPACE) + 'L_clavicule_01_CC'
R_Clavicule = str (NAMESPACE) + 'R_clavicule_01_CC'

L_Arm = str (NAMESPACE) + 'L_armIK_CC'
R_Arm = str (NAMESPACE) + 'R_armIK_CC'
L_ArmPV = str (NAMESPACE) + 'L_PV01'
R_ArmPV = str (NAMESPACE) + 'R_PV01'

L_Leg = str (NAMESPACE) + 'L_LegIK_CC'
R_Leg = str (NAMESPACE) + 'R_LegIK_CC'
L_LegPV = str (NAMESPACE) + 'LLeg_PV01'
R_LegPV = str (NAMESPACE) + 'RLeg_PV01'

LArmFK1 = 'L_armFK_01_CC'
LArmFK2 = 'L_armFK_02_CC'
LArmFK3 = 'L_armFK_03_CC'

RArmFK1 = 'L_armFK_01_CC'
RArmFK2 = 'L_armFK_02_CC'
RArmFK3 = 'L_armFK_03_CC'

LLegFK1 = 'L_Leg_FK_CC'
LLegFK2 = 'L_Knee_FK_CC'
LLegFK3 = 'L_Ankle_FK_CC'
LLegFK4 = 'L_Ball_FK_CC'

RLegFK1 = 'R_Leg_FK_CC'
RLegFK2 = 'R_Knee_FK_CC'
RLegFK3 = 'R_Ankle_FK_CC'
RLegFK4 = 'R_Ball_FK_CC'

All_CC = Head, Neck, Spine1,Spine2,Spine3,Spine4, COG, ReverseSpine,L_Clavicule,R_Clavicule, L_Arm,L_ArmPV,R_Arm,R_ArmPV, L_Leg,L_LegPV,R_Leg,R_LegPV 
None_CC = cmds.select (cl = True)

def KeyFrameThis (*args):

    cmds.setKeyframe (All_CC, breakdown = 0, hierarchy = 0, controlPoints = 0, shape = 0)

#Crear botones

    
    #Generales

AllButton = cmds.symbolButton (image = ButtonImages+'SelectAll.png', command = partial (selectControls, All_CC))
NoneButton = cmds.symbolButton (image = ButtonImages+'SelectNone.png', command = partial (selectControls, None_CC))
KeyAllButton = cmds.symbolButton (image = ButtonImages+'KeyAll.png', command = KeyFrameThis)

headButton = cmds.symbolButton (image = ButtonImages+'Head_Circle.png', command = partial (selectControls, Head))
neckButton = cmds.symbolButton (image = ButtonImages+'Neck.png', command = partial (selectControls, Neck))

spine1Button = cmds.symbolButton (image = ButtonImages+'UISpineGreen.png', command = partial (selectControls, Spine1))
spine2Button = cmds.symbolButton (image = ButtonImages+'UISpine.png', command = partial (selectControls, Spine2))
spine3Button = cmds.symbolButton (image = ButtonImages+'UISpine.png', command = partial (selectControls, Spine3))
spine4Button = cmds.symbolButton (image = ButtonImages+'UISpineGreen.png', command = partial (selectControls, Spine4))
COGButton =  cmds.symbolButton (image = ButtonImages+'COGSquare.png', command = partial (selectControls, COG))
ReverseButton =  cmds.symbolButton (image = ButtonImages+'InverseSpine.png', command = partial (selectControls, ReverseSpine))


    #IK
L_ClaviculeButton = cmds.symbolButton (image = ButtonImages+'L_Clavicule.png', command = partial (selectControls, L_Clavicule))
R_ClaviculeButton = cmds.symbolButton (image = ButtonImages+'R_Clavicule.png', command = partial (selectControls, R_Clavicule))

L_ArmButton = cmds.symbolButton (image = ButtonImages+'SquareBlue.png', command = partial (selectControls, L_Arm))
R_ArmButton = cmds.symbolButton (image = ButtonImages+'SquareRed.png', command = partial (selectControls, R_Arm))
L_ArmPVButton = cmds.symbolButton (image = ButtonImages+'SquareBlue.png', command = partial (selectControls, L_ArmPV))
R_ArmPVButton = cmds.symbolButton (image = ButtonImages+'SquareRed.png', h= 40, command = partial (selectControls, R_ArmPV))

L_LegButton = cmds.symbolButton (image = ButtonImages+'SquareBlue.png', command = partial (selectControls, L_Leg))
R_LegButton = cmds.symbolButton (image = ButtonImages+'SquareRed.png', command = partial (selectControls, R_Leg))
L_LegPVButton = cmds.symbolButton (image = ButtonImages+'SquareBlue.png', h= 40, command = partial (selectControls, L_LegPV))
R_LegPVButton = cmds.symbolButton (image = ButtonImages+'SquareRed.png', h= 40, command = partial (selectControls, R_LegPV))

    #FK
L_ArmFK1Button = cmds.symbolButton (image = ButtonImages+'CircleBlue.png', command = partial (selectControls, LArmFK1))
L_ArmFK2Button = cmds.symbolButton (image = ButtonImages+'CircleBlue.png', command = partial (selectControls, LArmFK2))
L_ArmFK3Button = cmds.symbolButton (image = ButtonImages+'CircleBlue.png', command = partial (selectControls, LArmFK3))
R_ArmFK1Button = cmds.symbolButton (image = ButtonImages+'CircleRed.png', command = partial (selectControls, RArmFK1))
R_ArmFK2Button = cmds.symbolButton (image = ButtonImages+'CircleRed.png', command = partial (selectControls, RArmFK2))
R_ArmFK3Button = cmds.symbolButton (image = ButtonImages+'CircleRed.png', command = partial (selectControls, RArmFK3))

L_LegFK1Button = cmds.symbolButton (image = ButtonImages+'CircleBlue.png', command = partial (selectControls, LLegFK1))
L_LegFK2Button = cmds.symbolButton (image = ButtonImages+'CircleBlue.png', command = partial (selectControls, LLegFK2))
L_LegFK3Button = cmds.symbolButton (image = ButtonImages+'CircleBlue.png', command = partial (selectControls, LLegFK3))
L_LegFK4Button = cmds.symbolButton (image = ButtonImages+'CircleBlue.png', command = partial (selectControls, LLegFK4))

R_LegFK1Button = cmds.symbolButton (image = ButtonImages+'CircleRed.png', command = partial (selectControls, RLegFK1))
R_LegFK2Button = cmds.symbolButton (image = ButtonImages+'CircleRed.png', command = partial (selectControls, RLegFK2))
R_LegFK3Button = cmds.symbolButton (image = ButtonImages+'CircleRed.png', command = partial (selectControls, RLegFK3))
R_LegFK4Button = cmds.symbolButton (image = ButtonImages+'CircleRed.png', command = partial (selectControls, RLegFK4))


#Colocar Botones

    #Generales
cmds.formLayout (formLayout, edit = True, af = [(AllButton, "left", 5), (AllButton, "top", 10)])
cmds.formLayout (formLayout, edit = True, af = [(NoneButton, "left", 50), (NoneButton, "top", 10)])
cmds.formLayout (formLayout, edit = True, af = [(KeyAllButton, "right", 5), (KeyAllButton, "top", 0)])

cmds.formLayout (formLayout, edit = True, af = [(headButton, "left",180), (headButton, "top", 46)])
cmds.formLayout (formLayout, edit = True, af = [(neckButton, "left", 185), (neckButton, "top", 135)])

cmds.formLayout (formLayout, edit = True, af = [(spine1Button, "left", 150), (spine1Button, "top", 200)])
cmds.formLayout (formLayout, edit = True, af = [(spine2Button, "left", 150), (spine2Button, "top", 230)])
cmds.formLayout (formLayout, edit = True, af = [(spine3Button, "left", 150), (spine3Button, "top", 260)])
cmds.formLayout (formLayout, edit = True, af = [(spine4Button, "left", 150), (spine4Button, "top", 290)])
cmds.formLayout (formLayout, edit = True, af = [(COGButton, "left", 138), (COGButton, "top", 310)])
cmds.formLayout (formLayout, edit = True, af = [(ReverseButton, "left", 152), (ReverseButton, "top", 350)])


cmds.formLayout (formLayout, edit = True, af = [(L_ClaviculeButton, "right", 170), (L_ClaviculeButton, "top", 165)])
cmds.formLayout (formLayout, edit = True, af = [(R_ClaviculeButton, "left", 170), (R_ClaviculeButton, "top", 165)])

    #IK
cmds.formLayout (formLayout, edit = True, af = [(L_ArmButton, "right", 100), (L_ArmButton, "top", 330)])
cmds.formLayout (formLayout, edit = True, af = [(R_ArmButton, "left", 100), (R_ArmButton, "top", 330)])
cmds.formLayout (formLayout, edit = True, af = [(L_ArmPVButton, "right", 120), (L_ArmPVButton, "top", 250)])
cmds.formLayout (formLayout, edit = True, af = [(R_ArmPVButton, "left", 120), (R_ArmPVButton, "top", 250.)])

cmds.formLayout (formLayout, edit = True, af = [(L_LegButton, "right", 175), (L_LegButton, "top", 530)])
cmds.formLayout (formLayout, edit = True, af = [(R_LegButton, "left", 175), (R_LegButton, "top", 530)])
cmds.formLayout (formLayout, edit = True, af = [(L_LegPVButton, "right", 175), (L_LegPVButton, "top", 450)])
cmds.formLayout (formLayout, edit = True, af = [(R_LegPVButton, "left", 175), (R_LegPVButton, "top", 450)])
    
    #FK    
cmds.formLayout (formLayout, edit = True, af = [(L_ArmFK1Button, "right", 90), (L_ArmFK1Button, "top", 180)])
cmds.formLayout (formLayout, edit = True, af = [(L_ArmFK2Button, "right", 75), (L_ArmFK2Button, "top", 250)])
cmds.formLayout (formLayout, edit = True, af = [(L_ArmFK3Button, "right", 60), (L_ArmFK3Button, "top", 330)])

cmds.formLayout (formLayout, edit = True, af = [(R_ArmFK1Button, "left", 90), (R_ArmFK1Button, "top", 180)])
cmds.formLayout (formLayout, edit = True, af = [(R_ArmFK2Button, "left", 75), (R_ArmFK2Button, "top", 250)])
cmds.formLayout (formLayout, edit = True, af = [(R_ArmFK3Button, "left", 60), (R_ArmFK3Button, "top", 330)])

cmds.formLayout (formLayout, edit = True, af = [(L_LegFK1Button, "right", 120), (L_LegFK1Button, "top", 400)])
cmds.formLayout (formLayout, edit = True, af = [(L_LegFK2Button, "right", 120), (L_LegFK2Button, "top", 465)])
cmds.formLayout (formLayout, edit = True, af = [(L_LegFK3Button, "right", 120), (L_LegFK3Button, "top", 530)])
cmds.formLayout (formLayout, edit = True, af = [(L_LegFK4Button, "right", 80), (L_LegFK4Button, "top", 530)])


cmds.formLayout (formLayout, edit = True, af = [(R_LegFK1Button, "left", 120), (R_LegFK1Button, "top", 400)])
cmds.formLayout (formLayout, edit = True, af = [(R_LegFK2Button, "left", 120), (R_LegFK2Button, "top", 465)])
cmds.formLayout (formLayout, edit = True, af = [(R_LegFK3Button, "left", 120), (R_LegFK3Button, "top", 530)])
cmds.formLayout (formLayout, edit = True, af = [(R_LegFK4Button, "left", 80), (R_LegFK4Button, "top", 530)])


#Show Window
Texto = cmds.text(str(NAMESPACE + Character), bgc = (1,1,0))
cmds.formLayout (formLayout, edit = True, af = [(Texto, "left", 2), (Texto, "top", 550)])
cmds.showWindow (window) 
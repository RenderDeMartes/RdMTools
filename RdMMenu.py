'''
12/9/18
RdM Menu v1.0
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMTools.RdMMenu as RdMMenu
reload (RdMMenu)

Icons thanks to: iconos8.es

'''

from maya import cmds    
import os , sys
import pymel.core as pm
from functools import partial


pm.melGlobals.initVar('string', 'gMainWindow')


if pm.menu('RdMMenu', q=1, exists=1):
	pm.menu('RdMMenu', e=1, dai=1)
else:
	pm.menu('RdMMenu', p='MayaWindow', l="RdM Tools", to=True)


#### Path
imagePath  = cmds.internalVar(usd = True) 
Path = imagePath + 'RdMTools/'
sys.path.append(Path)
Icons = Path + 'icons/'

if os.path.exists(Path + 'RdMLicenseFile.ma') == 1:
    
    print 'License is good!'   
    
    
    ##Warning Profximamente
    def Proximamente (*args):
        cmds.warning ('Coming soon, more info: www.renderdemartes.com')
    
    ##Spine
    def RdMAutoSpine(*kwargs):
        import RdMAutoSpine
        reload (RdMAutoSpine)
    
   
    pm.setParent('RdMMenu', menu=1)
    SpineMenu = cmds.menuItem (sm = True, to = True,ann ='',  l = 'Spine', i =Icons + 'Spine.png')
    cmds.menuItem (l = 'IK-FK Spine', c = RdMAutoSpine, i = Icons + 'IKFK.png')
    pm.setParent(SpineMenu, menu=1)
    
    cmds.menuItem (l = 'Ribbon Spine', c = Proximamente, i = Icons + 'Ribbon.png')
    pm.setParent(SpineMenu, menu=1)
    
    
    ##Arms
    def RdMAutoArms(*kwargs):
        import RdMAutoArms
        reload (RdMAutoArms)
    
    pm.setParent('RdMMenu', menu=1)
    ArmsMenu = cmds.menuItem (sm = True, to = True, l = 'Arms', i = Icons + 'Arm.png')
    cmds.menuItem (l = 'IK-FK Arms',c = RdMAutoArms, i = Icons + 'IKFK.png')
    pm.setParent(ArmsMenu, menu=1)
    
    cmds.menuItem (l = 'Ribbon Arms', c = Proximamente, i = Icons + 'Ribbon.png')
    pm.setParent(ArmsMenu, menu=1)
    
    ##Hands
    def RdMAutoHandsv2(*kwargs):
        import RdMAutoHandsv2
        reload (RdMAutoHandsv2)
    cmds.menuItem (l = 'Hands', c = RdMAutoHandsv2, i = Icons + 'Hand.png')
    pm.setParent(ArmsMenu, menu=1)
    
    
    
    ##Legs
    def RdMAutoLegs(*kwargs):
        import RdMAutoLegs
        reload (RdMAutoLegs)
    
    pm.setParent('RdMMenu', menu=1)
    LegsMenu = cmds.menuItem (sm = True, to = True, l = 'Legs', i = Icons + 'Leg.png')
    cmds.menuItem (l = 'IK-FK Legs',c = RdMAutoLegs, i = Icons + 'IKFK.png')
    pm.setParent(LegsMenu, menu=1)
    cmds.menuItem (l = 'Ribbon Legs', c = Proximamente, i = Icons + 'Ribbon.png')
    pm.setParent(LegsMenu, menu=1)
    
    
    ##Head
    def RdMAutoChickenHead(*kwargs):
        import RdMAutoChickenHead
        reload (RdMAutoChickenHead)
        
    def RdMMotionPaths(*args):
        import RdMMotionPaths
        reload (RdMMotionPaths)
    
    pm.setParent('RdMMenu', menu=1)
    HeadMenu = cmds.menuItem (sm = True, to = True, l = 'Head', i = Icons + 'Head.png')
    pm.setParent(HeadMenu, menu=1)
    cmds.menuItem (l = 'Head',c = RdMAutoChickenHead, i = Icons + 'Head.png')
    pm.setParent(HeadMenu, menu=1)
    cmds.menuItem (l = 'Face Motion Paths', c = RdMMotionPaths, i = Icons + 'MotionPath.png')
    
    
    ##Complete
    def RdMAutoComplete(*kwargs):
        import RdMAutoComplete
        reload (RdMAutoComplete)
        
    
    pm.setParent('RdMMenu', menu=1)
    CompleteMenu = cmds.menuItem (sm = True, to = True, l = 'Complete', i = Icons + 'CompleteRig.png')
    pm.setParent(CompleteMenu, menu=1)
    cmds.menuItem (l = 'Complete the Rig',c = RdMAutoComplete, i = Icons + 'CompleteRig.png')
    
    def RdMBindSkin(*kwargs):
        import RdMBindSkin
        reload (RdMBindSkin)
    
    pm.setParent(CompleteMenu, menu=1)
    cmds.menuItem (l = 'Bind Skin', c = RdMBindSkin, i = Icons + 'BindSkin.png')
    
    
    ##UI
    def RdMBipedUI(*kwargs):
        import RdMBipedUI
        reload (RdMBipedUI)
    
    pm.setParent('RdMMenu', menu=1)
    UIMenu = cmds.menuItem (sm = True, to = True, l = 'UI', i = Icons + 'UI.png')
    pm.setParent(UIMenu, menu=1)
    cmds.menuItem (l = 'Biped UI', c= RdMBipedUI, i = Icons + 'UI.png')
    
    
    def RdMAutoSpine(*kwargs):
        import RdMAutoSpine
        reload (RdMAutoSpine)
        
        
        
    pm.setParent('RdMMenu', menu=1)
    ExtrasMenu = cmds.menuItem ('ExtrasMenu', sm = True, to = True, l = 'Extras', i = Icons + 'Extras.png')
    
    
    #Fill Extras Automatic

    def populateScripts(*args):
    
        scriptsPath = cmds.internalVar(usd = True)+"RdMTools/RdMExtraScripts/"
        dirs = os.listdir( scriptsPath )
        

                
        for script in dirs:
            
           ImportScript = 'import RdMExtraScripts.' + str(script) 
           
           if script.endswith('.py'): 
                                                                                  
               cmds.menuItem (label = script, parent = 'ExtrasMenu', i = Icons + 'ExtraItem.png', c = ImportScript)  
               pm.setParent(CompleteMenu, menu=1) 
               
               
              
    populateScripts() 
   
   
   
    #Contact/Info
    cmds.menuItem (l = 'Contact/Info', c= 'cmds.launch(web="http://www.renderdemartes.com")', p = 'RdMMenu')
    
    
    

else:
    result = cmds.promptDialog(
                title='RdMTools',
                message='Activation Code:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel',
                bgc = (0.2,0.2,0.2))
                
    licensePath  = cmds.internalVar(usd = True) 
    Lic = licensePath + 'RdMTools/RdMLicenseFile.ma'
    print Lic
    
    if result == 'OK':
        text = cmds.promptDialog(query=True, text=True)
        if text == '123':    
            cmds.file(rename = Lic)        
            cmds.file ( s = True, f = True, type='mayaAscii' )
       
            print 'Thanks!'  
            import RdMMenu        
            reload (RdMMenu)    
            
        else:
            cmds.warning ('Go to www.renderdemartes.com to buy a license')

   
   
                  
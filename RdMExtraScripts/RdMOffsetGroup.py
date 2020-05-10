'''
06/06/18
RdMOffsetGroup v1.0.0 
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMOffsetGroup
reload (RdMOffsetGroup)

'''

from maya import cmds 

if cmds.window ('RdMOffsetGroup', exists = True):
    cmds.deleteUI ('RdMOffsetGroup')
    
       
def OffsetGroupBtn (*args):
    
    HandItems = cmds.ls( selection=True )
    
    GroupName = 'OffsetGroup'
        
    for CC in HandItems:  
        
        while cmds.objExists (CC + str (GroupName)):
                     
            GroupName = str(GroupName) + str(GroupName)
            
        cmds.group (n= CC + str (GroupName), r = True, em = True)
        cmds.pointConstraint (CC, CC + str (GroupName))
        cmds.orientConstraint (CC, CC + str (GroupName))
        cmds.delete (CC + str (GroupName) + str ('_pointConstraint1'))
        cmds.delete (CC + str (GroupName) + str ('_orientConstraint1'))
        cmds.select (CC)
        Papa = cmds.listRelatives (c= True, p = True)
        
               
        cmds.parent (CC, CC + str (GroupName))
        
        if Papa > 1: 
        
            cmds. parent (CC + str (GroupName), Papa)
    

    
            
#Window
cmds.window( 'RdMOffsetGroup', width=250, title= 'RdM Offset Group' )
cmds.columnLayout( adjustableColumn=True )
cmds.separator (h = 10)
cmds.button (c = OffsetGroupBtn, l = 'Create Offset Group')
cmds.separator (h = 10)
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow('RdMOffsetGroup')
'''
06/06/18
RdMSingleRibbon v1.0.0 
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMSingleRibbon
reload (RdMSingleRibbon)

'''

from maya import cmds

if cmds.window ("RdMSingleRibbon", exists = True):
    cmds.deleteUI ("RdMSingleRibbon")
    
def CreateRibbonBtn (jointAmount):
    
    cmds.nurbsPlane (v = jointAmount, u = 1, lr = jointAmount, ax = (0,1,0) )
    
    
    
CreateRibbonBtn(5)


cmds.window( "RdMSingleRibbon", width=250, title="RdMSingleRibbon" )
cmds.columnLayout( adjustableColumn=True )
cmds.separator () 

cmds.button( label='Create Ribbon', command= '' )
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow("RdMSingleRibbon")
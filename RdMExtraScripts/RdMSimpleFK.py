'''
22/10/18
RdMSimpleFK
By Esteban Rodriguez

www.renderdemartes.com
info@renderdemartes.com

import RdMSimpleFK
reload (RdMSimpleFK)
'''


from maya import cmds

if cmds.window ('RdMSimpleFK', exists = True):
    cmds.deleteUI ('RdMSimpleFK')
    


def FK(*args):
    
    Joints = cmds.ls(sl = True)
    
    for Joint in Joints:
        circulo = cmds.circle(n=str(Joint)+'_CC',nr = (1,0,0))
        grupo = cmds.group (circulo, n = str(Joint) + '_GRP')
        
        if 'X' in locals():
            cmds.parent(grupo, X)
            
        parent01=cmds.parentConstraint (Joint, grupo,mo=False )
        cmds.delete(parent01)
        parent02=cmds.orientConstraint (circulo, Joint)
        
        if cmds.objExists (str(Joint)+'_CC'):
            X = str(Joint)+'_CC'
        
        cmds.setAttr (str(circulo[0])+'.overrideEnabled', 1)
        cmds.setAttr (str(circulo[0])+'.overrideColor', 16)
        
        
        
        
        
    
    
    
    
cmds.window( "RdMSimpleFK", width=250, title="Simple FK", toolbox = True)
cmds.columnLayout( adjustableColumn=True )
cmds.button( label='Create FK', command=FK)
cmds.showWindow("RdMSimpleFK")
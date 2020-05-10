from maya import cmds
import maya.mel as mel

cmds.undoInfo(openChunk=True)    


Name= 'Belt2'

Circulo = cmds.circle(n = Name + '_CV' ,nr = (0,1,0), r = 10)
Padre = cmds.group (n= Name + '_GRP')
cmds.select(clear = True)

X = 0
print X

for Joint in range (0,8):
    print Joint
    hueso = cmds.joint(n = Name + '_JointSkirt_0' + str(Joint))  
    cmds.select (hueso)
    Grupo = cmds.group(n = Name + '_JointSkirt_0' + str(Joint) + '_GRP')
    Path = cmds.pathAnimation (Grupo, Circulo)
    cmds.select(cl = True)
    attr = str(Path)+'.u' 
    maya.mel.eval("source channelBoxCommand; CBdeleteConnection \"%s\""%attr)
    cmds.setAttr(str(Path)+'.u', X)
    X = X + 1
    cmds.parent(Grupo, Padre)
    
cmds.select ('Skirt_CV')
cmds.move (0,1,0) 
cmds.move (0,-1,0)
  
cmds.undoInfo(closeChunk=True)    
    

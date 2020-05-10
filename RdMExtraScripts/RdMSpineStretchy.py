from maya import cmds

def MultiplyDiveNode(Name, mode, *args):
    cmds.shadingNode('multiplyDivide', asUtility=True, name=Name)
    cmds.setAttr(str(Name)+'.operation', mode)
    
   

#Curve info
Curveinfonode = cmds.shadingNode('curveInfo', asUtility=True, name= 'CurveInfoSpine') 

cmds.connectAttr ('curveShape1.worldSpace[0]', str(Curveinfonode)+'.inputCurve', f = True)
ArcLenght = cmds.arclen( 'curveShape1' )
print ArcLenght
 
#Normalize

NormalizeDiv = MultiplyDiveNode('NomralizeDivNode', 2)
cmds.connectAttr ('CurveInfoSpine.arcLength', 'NomralizeDivNode.input1X.', f = True)
cmds.connectAttr ('Arturo.scaleX', 'NomralizeDivNode.input2X.', f = True)

print 'DoneNormalize'         


#StretchyDiv

StretchyDiv = MultiplyDiveNode('StretchyDivNode', 2)
cmds.shadingNode('floatConstant', asUtility=True, name='ArcLenghtNode')
cmds.setAttr ('ArcLenghtNode.inFloat', ArcLenght)
cmds.connectAttr ('NomralizeDivNode.outputX', 'StretchyDivNode.input1X.', f = True)
cmds.connectAttr ('ArcLenghtNode.outFloat', 'StretchyDivNode.input2X.', f = True)

print 'DoneStretchyDiv'         

 
#Squash Inv Power 

SquashInvPower = MultiplyDiveNode('SquashInvPower', 3)
cmds.connectAttr ('StretchyDivNode.outputX', 'SquashInvPower.input1X.', f = True)
cmds.shadingNode('floatConstant', asUtility=True, name='05invPower')
cmds.setAttr ('invPower.inFloat', 0.5)
cmds.connectAttr ('invPower.outFloat', 'SquashInvPower.input2X.', f = True)
 
print 'DoneInvPower'         


#Squash Div

SquashDiv = MultiplyDiveNode('SquashDiv', 2)
cmds.connectAttr ('SquashInvPower.outputX', 'SquashDiv.input2X.', f = True)
cmds.shadingNode('floatConstant', asUtility=True, name='SquashConstantDiv')
cmds.setAttr ('SquashConstantDiv.inFloat', 1)
cmds.connectAttr ('SquashConstantDiv.outFloat', 'SquashDiv.input1X', f = True)
 
print 'DoneSquashDiv'         
 
#ConnectStretchy to Joints

X = 1
while cmds.objExists('Spine_'+str(X)):
    cmds.connectAttr('StretchyDivNode.outputX', 'Spine_'+str(X)+'.scaleX')
    cmds.connectAttr('SquashDiv.outputX', 'Spine_'+str(X)+'.scaleY')
    cmds.connectAttr('SquashDiv.outputX', 'Spine_'+str(X)+'.scaleZ')
    X = X+1

print 'Done'         
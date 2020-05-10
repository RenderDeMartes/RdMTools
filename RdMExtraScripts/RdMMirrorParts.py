from maya import cmds

Selection = cmds.ls(sl = True)
Relative = cmds.listRelatives (Selection, p =True)
Duplicade = cmds.duplicate (Selection, n = str(Selection[0])+'DuplicateRight')

cmds.select(cl = True)
Grupo = cmds.group (n = str(Selection[0]) + '_Right_MirrorSide', em =True)
cmds.parent(Duplicade[0], Grupo)
cmds.setAttr (str(Grupo) + '.rotateX', 180)
cmds.setAttr (str(Grupo) + '.scaleX', -1)
cmds.setAttr (str(Grupo) + '.scaleY', -1)
cmds.setAttr (str(Grupo) + '.scaleZ', -1)

cmds.parent(Grupo, Relative)
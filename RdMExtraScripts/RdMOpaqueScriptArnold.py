from maya import cmds

aiOpaque = 'Shape.aiOpaque'
List = cmds.ls (sl = True, s = True)

for C in List:
    cmds.setAttr (str (Cc ) + str(aiOpaque), 0)
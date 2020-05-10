from maya import cmds


def ShapeButtonPush(*args):
    cmds.circle (name = "Hola")
    cmds.select ("Hola")
    selected =cmds.ls(sl=True, o=True, dag=True, s=True)
    curveName = str(selected[0])
    cmds.delete (curveName)


def ParentButtonPush(*args):
    selected =cmds.ls(sl=True, o=True, dag=True, s=True)
    curveName = str(selected[0])
    cmds.parent (selected, "Hola", r = True, s=True) 
    cmds.select ("Hola")
   




cmds.window( width=250, title="Animacion 6" )
cmds.columnLayout( adjustableColumn=True )
cmds.button( label='Crear Shape', command=ShapeButtonPush )
cmds.button( label='Parent -r -s', command=ParentButtonPush )
cmds.text( label='Por: Render de Martes' )
cmds.showWindow()





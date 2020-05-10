#
#    29/4/18
#    RdM PoseToAttr v1.0.0 
#    By Esteban Rodriguez

#    www.renderdemartes.com
#    info@renderdemartes.com

#    import RdMPoseToAttr
#    reload (RdMPoseToAttr)

#
#


from maya import cmds 

if cmds.window ('PoseToAttr', exists = True):
    cmds.deleteUI ('PoseToAttr')
    
       
def ToAttr (*args):
    
    HandItems = cmds.ls( selection=True )
    
    GroupName = cmds.textFieldGrp (NameGRP, q = True, text = True)
        
    for FK in HandItems:  
           
        cmds.group (n= FK + str (GroupName), r = True, em = True)
        cmds.pointConstraint (FK, FK + str (GroupName))
        cmds.orientConstraint (FK, FK + str (GroupName))
        cmds.delete (FK + str (GroupName) + str ('_pointConstraint1'))
        cmds.delete (FK + str (GroupName) + str ('_orientConstraint1'))
        cmds.select (FK)
        Papa = cmds.listRelatives (c= True, p = True)
        cmds.parent (FK, FK + str (GroupName))
        cmds. parent (FK + str (GroupName), Papa)
    
    AttributeName = cmds.textFieldGrp (NameGRP, q = True, text = True)
    
    AttributeLocation = cmds.textFieldGrp (NameDriver, q = True, text = True)
    
    cmds.select (AttributeLocation)
    cmds.addAttr (ln = AttributeName,  min = 0, max = 20)
    cmds.setAttr (str (AttributeLocation) + '.' + str (AttributeName), k = True)
    
    
    #for SDK in HandItems:  
    
    for SDK in HandItems:
        
        cmds.setAttr (str (AttributeLocation) + '.' + str (AttributeName), 20)
        cmds.select (SDK + str (GroupName))
        cmds.setDrivenKeyframe (at = 'rotateX' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'rotateY' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'rotateZ' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'translateX' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'translateY' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'translateZ' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        
        cmds.setAttr (str (AttributeLocation) + '.' + str (AttributeName), 0)
        cmds.setAttr (SDK + str (GroupName) + str ('.rotateY'),0)
        cmds.setAttr (SDK + str (GroupName) + str ('.rotateX'),0)
        cmds.setAttr (SDK + str (GroupName) + str ('.rotateZ'),0)    
        cmds.setAttr (SDK + str (GroupName) + str ('.translateX'),0)
        cmds.setAttr (SDK + str (GroupName) + str ('.translateY'),0)
        cmds.setAttr (SDK + str (GroupName) + str ('.translateZ'),0)    
            
        cmds.setDrivenKeyframe (at = 'rotateX' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'rotateY' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'rotateZ' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'translateX' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'translateY' , cd = str (AttributeLocation) + '.' + str (AttributeName) )
        cmds.setDrivenKeyframe (at = 'translateZ' , cd = str (AttributeLocation) + '.' + str (AttributeName) )


    
            
#Window
cmds.window( 'PoseToAttr', width=250, title= 'Pose to Attr' )
cmds.columnLayout( adjustableColumn=True )
cmds.separator (h = 20)
NameDriver = cmds.textFieldGrp (l = 'Driver Name', editable = True)
cmds.separator (h = 20)
NameGRP = cmds.textFieldGrp (l = 'New Attr Name', editable = True)
cmds.separator (h = 20)
cmds.text ('Please select the Driven Objects')
cmds.separator (h = 20)
cmds.button (c = ToAttr, l = 'Pose to Attr')
cmds.separator (h = 10)
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow('PoseToAttr')
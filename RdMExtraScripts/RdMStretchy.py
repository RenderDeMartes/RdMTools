'''
04/06/18
RdMStretchy v1.0
By Esteban Rodriguez
.
Thanks to stretchyIK.mel
by: Blackpearl Animation

www.renderdemartes.com
info@renderdemartes.com

import RdMStretchy
reload (RdMStretchy)
'''

if cmds.window ("RdMStretchy", exists = True):
    cmds.deleteUI ("RdMStretchy")
    
def StretchyDef(*args):
    
    #Warning if selection is empty
    seleccionPrueba  = cmds.ls( selection=True )
    if len(seleccionPrueba) == 0:
        cmds.warning ('Please select: IK Handle')
        
    else: 
           
       
        #Get Start and end Joints
        IkGroup = cmds.ls( selection=True )
        print IkGroup 
    
        IKHandle = IkGroup[0]    
        print 'IK Handle is ' + IKHandle
    
        StartJoint = cmds.listConnections (IKHandle)
        print 'Start joint is ' + StartJoint [0]
        
        EndEffector = StartJoint[1]
        print 'EndEffects is ' + EndEffector
        
        EndJoint = cmds.listConnections (EndEffector)
        print 'End Joint is ' + EndJoint [1]
        
        #Get Joints in chain
        jointChain = cmds.listRelatives (StartJoint, ad = True, typ = 'joint')
        jointChain.append (StartJoint[0])    
        
        print 'The full chain is : '
        
        jointNum = 0
        
        for Joint in jointChain:
            print Joint    
            
        #Get the current position of the ik Handle  
        IKPosition = cmds.getAttr (IKHandle + '.translate')
        print 'IK Handle Position is : ' + str(IKPosition)

        #Create null groups to get distances
        GrupoFinal = cmds.group (n = 'EndJoint_' + str (EndJoint[1] + '_' + str (IKHandle)), em = True)    
        GrupoInicial = cmds.group (n = 'StartJoint_' + str (StartJoint[0] + '_' + str (IKHandle)), em = True)
        
        #Parent the groups to the ik and joint
        
        cmds.pointConstraint (StartJoint[0], GrupoInicial , mo = False)
        cmds.pointConstraint (IKHandle, GrupoFinal, mo = False)
    
        
        #Create all the necessary nodes
        
        distanceBetween = cmds.shadingNode('distanceBetween', au= True, n = 'distanceBetween' + str (IKHandle))
        
        conditionNode = cmds.shadingNode('condition', asUtility=1, n = 'conditionNode' + str (IKHandle))
        cmds.setAttr ('conditionNode' + str (IKHandle) + '.operation', 3)  

        multyDivideNode = cmds.shadingNode('multiplyDivide', asUtility=1, n = 'multiplyDivide' + str (IKHandle))
        cmds.setAttr ('multiplyDivide' + str (IKHandle) + '.operation', 2)

        
        
        
        
        #Get the real distance between the first and last joint
        
        cmds.setAttr ('multiplyDivide' + str (IKHandle) + '.operation', 2)
        jointDistance = cmds.listRelatives (StartJoint, ad = True, typ = 'joint')
    
        
        jointNum = 0
        totalDistance = 0
        
        for Joint in jointDistance:
            
            distanciaActual = cmds.getAttr (Joint + str ('.translateX'))   
            print distanciaActual
            totalDistance = totalDistance + distanciaActual  
            
            
        print 'distancia entre joints es :' + str(totalDistance)  
        
        cmds.setAttr (conditionNode + str ('.firstTerm'), totalDistance)
        cmds.setAttr (conditionNode + str ('.colorIfTrueR'), totalDistance)
        cmds.setAttr (multyDivideNode + str ('.input2X'), totalDistance)
        
                 
        #Connect the new nodes together
        
        
        cmds.connectAttr (GrupoInicial + '.translate', distanceBetween + '.point1')    
        cmds.connectAttr (GrupoFinal + '.translate', distanceBetween + '.point2')  
        
        cmds.connectAttr (distanceBetween + '.distance', conditionNode + str ('.colorIfFalseR'))
        cmds.connectAttr (distanceBetween + '.distance', conditionNode + str ('.secondTerm'))
        
        cmds.connectAttr (conditionNode + str ('.outColorR'), multyDivideNode + str ('.input1X'))
        
       
        
        #Connect the stretchy to the joint scale X
        
        for joint in jointChain:
            
            cmds.connectAttr (multyDivideNode + str ('.outputX'), joint + str('.scaleX'))
        
        #Set the IK to its original position
        
        cmds.select (IKHandle)
        cmds.move (0,0,0, r = True)
        
        #Group The stuff
        cmds.group (GrupoInicial,GrupoFinal, n = str (IKHandle ) + '_StretchyGroup')
        
        print 'Done!'
        
        
cmds.window( "RdMStretchy", width=250, title="RdMStretchy" )
cmds.columnLayout( adjustableColumn=True )
cmds.separator () 

cmds.button( label='Convert Ik to Stretchy', command= StretchyDef )
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow("RdMStretchy")
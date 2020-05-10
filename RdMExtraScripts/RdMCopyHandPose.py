from maya import cmds


def MirrorFingrerPos(finger):

    if cmds.objExists('L_'+str(finger)+'_0_CC'):
        LFinger = ['L_'+str(finger)+'_0_CC','L_'+str(finger)+'_1_CC','L_'+str(finger)+'_2_CC','L_'+str(finger)+'_3_CC']
        
        for i in LFinger:
            
            if cmds.objExists(str(i)):
                print i
    
                RX = cmds.getAttr (str(i)+'.rotateX')
                RY = cmds.getAttr (str(i)+'.rotateY')
                RZ = cmds.getAttr (str(i)+'.rotateZ')
                
                print 'R'+str(i[1:])

                cmds.setAttr('R'+str(i[1:])+'.rotateX', RX)
                print RX
                cmds.setAttr('R'+str(i[1:])+'.rotateY', RY)
                print RY
                cmds.setAttr('R'+str(i[1:])+'.rotateZ', RZ)
                print RZ
                
MirrorFingrerPos('Index')
MirrorFingrerPos('Middle')
MirrorFingrerPos('Pinky')




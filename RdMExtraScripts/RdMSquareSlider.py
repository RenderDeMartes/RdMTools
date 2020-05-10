from maya import cmds

#Delete UI
if cmds.window ("RdMSqureSlider", exists = True):
    cmds.deleteUI ("RdMSqureSlider")
 
#Define Vertical Slider
def VerticalSlider(*args): 

    #General Info
    Name= cmds.textFieldGrp (NameGRP, q = True, text = True) + 'VSlider'
    Size = cmds.intSliderGrp(SizeSlider, q = True, v = 5)
    print Size
    Color = 16
    
    #InnerForm
    Circulo = cmds.circle(n=Name)
    
    
        #Top
    cmds.select (str(Circulo[0]) +'.cv[0:2]')
    cmds.scale(1,1e-05,1, r= True, p = (0, 0.945903,0 ))
    
        #Buttom
    cmds.select (str(Circulo[0]) +'.cv[4:6]')
    cmds.scale(1,1e-05,1, r= True, p = (0, -0.945903,0 ))
    
        #Left
    cmds.select (str(Circulo[0]) +'.cv[6:7]',str(Circulo[0]) +'.cv[0]')
    cmds.scale(1e-05,1,1, r= True, p = ( 0.945903,0,0 ))
    
        #Right
    cmds.select (str(Circulo[0]) +'.cv[2:4]')
    cmds.scale(1e-05,1,1, r= True, p = ( -0.945903,0,0 ))
    
        #Color
    cmds.setAttr ('%s.overrideEnabled'%(Circulo[0]), 1)
    cmds.setAttr ('%s.overrideColor'%(Circulo[0]), Color)
        
    
    #MoverController
    
    cmds.select(cl = True)
    
    CirculoMover= cmds.duplicate(Circulo[0], n = '%s_Mover' %(Circulo[0]))
    CirculoMoverGrupo= cmds.group (CirculoMover, n = '%s_GRP' %(CirculoMover[0]))
    
    CirculoGrupo= cmds.group (Circulo, n = '%s_GRP' %(Circulo[0]))
    
        #CorrectScale
    cmds.xform ('%s'%(CirculoMoverGrupo), s = (1.2,Size+1.2,1.2), r = True)
    
    
    #Organizing and limit Info
    
    cmds.parent(CirculoGrupo, CirculoMover)
    cmds.select(Circulo[0])
    cmds.transformLimits (tx = (0,0), etx = (1,1))
    cmds.transformLimits (ty = (-Size,Size), ety = (1,1))
    cmds.transformLimits (tz = (0,0), etz = (1,1))

#Define Square Slider
def SquareSlider(*args): 

    #General Info
    Name= cmds.textFieldGrp (NameGRP, q = True, text = True) + 'VSlider'
    Size = cmds.intSliderGrp(SizeSlider, q = True, v = 5)
    print Size
    Color = 16
    
    #InnerForm
    Circulo = cmds.circle(n=Name)
    
    
        #Top
    cmds.select (str(Circulo[0]) +'.cv[0:2]')
    cmds.scale(1,1e-05,1, r= True, p = (0, 0.945903,0 ))
    
        #Buttom
    cmds.select (str(Circulo[0]) +'.cv[4:6]')
    cmds.scale(1,1e-05,1, r= True, p = (0, -0.945903,0 ))
    
        #Left
    cmds.select (str(Circulo[0]) +'.cv[6:7]',str(Circulo[0]) +'.cv[0]')
    cmds.scale(1e-05,1,1, r= True, p = ( 0.945903,0,0 ))
    
        #Right
    cmds.select (str(Circulo[0]) +'.cv[2:4]')
    cmds.scale(1e-05,1,1, r= True, p = ( -0.945903,0,0 ))
    
        #Color
    cmds.setAttr ('%s.overrideEnabled'%(Circulo[0]), 1)
    cmds.setAttr ('%s.overrideColor'%(Circulo[0]), Color)
        
    
    #MoverController
    
    cmds.select(cl = True)
    
    CirculoMover= cmds.duplicate(Circulo[0], n = '%s_Mover' %(Circulo[0]))
    CirculoMoverGrupo= cmds.group (CirculoMover, n = '%s_GRP' %(CirculoMover[0]))
    
    CirculoGrupo= cmds.group (Circulo, n = '%s_GRP' %(Circulo[0]))
    
        #CorrectScale
    cmds.xform ('%s'%(CirculoMoverGrupo), s = (1.2,Size+1.2,1.2), r = True)
    
    
    #Organizing and limit Info
    
    cmds.parent(CirculoGrupo, CirculoMover)
    cmds.select(Circulo[0])
    cmds.transformLimits (tx = (0,0), etx = (1,1))
    cmds.transformLimits (ty = (-Size,Size), ety = (1,1))
    cmds.transformLimits (tz = (0,0), etz = (1,1))



#Window    
cmds.window( "RdMSqureSlider", width=250, title="RdMSqureSlider" )
cmds.columnLayout( adjustableColumn=True )
cmds.separator()
NameGRP = cmds.textFieldGrp (l = 'Name', editable = True, hlc = (1,1,1), tx = 'Slider' )
cmds.separator()
SizeSlider = cmds.intSliderGrp (l = 'Size: ', min = 1 , max = 20, field = True, v = 5, hlc = (1,1,1) )
cmds.separator() 
cmds.text( label='Create Slider')
cmds.rowLayout(nc= 2, 
               columnAlign=(1, 'right'), 
               columnAttach=[(1, 'both', 80), 
                             (2, 'both', 0)] )
                             
cmds.button( label='Vertical', command= VerticalSlider, w =50, h = 120 )
cmds.button( label='Square', command= SquareSlider, w =120, h = 120 )
cmds.setParent('..')
cmds.separator()
cmds.text( label='By: Render de Martes' )
cmds.text( label='info@renderdemartes.com' )
cmds.showWindow("RdMSqureSlider")


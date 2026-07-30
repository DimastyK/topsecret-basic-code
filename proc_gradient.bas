'Procedural gradient Inigo Quilez
CLS

For j=0 To 6

Read a0,a1,a2
Read b0,b1,b2
Read c0,c1,c2
Read d0,d1,d2
For x=0 To 255
t=x/255'0..1
rv=a0+b0*Cos(2*Pi*(c0*t+d0))
gv=a1+b1*Cos(2*Pi*(c1*t+d1))
bv=a2+b2*Cos(2*Pi*(c2*t+d2))
Color RGB(255 And Int(255*rv),255 And Int(255*gv),255 And Int(255*bv))
Line x,j*32,x,(j+1)*32
Next x
Next j
'Save image"procg.bmp"
'a0-d3
Data 0.5,0.5,0.5
Data 0.5,0.5,0.5
Data 1.0,1.0,1.0
Data 0.0,0.33,0.67

Data 0.5,0.5,0.5
Data 0.5,0.5,0.5
Data 1.0,1.0,1.0
Data 0.0,0.1,0.2

Data 0.5,0.5,0.5
Data 0.5,0.5,0.5
Data 1.0,1.0,1.0
Data 0.3,0.2,0.2

Data 0.5,0.5,0.5
Data 0.5,0.5,0.5
Data 1.0,1.0,0.5
Data 0.8,0.9,0.3

Data 0.5,0.5,0.5
Data 0.5,0.5,0.5
Data 1.0,0.7,0.4
Data 0.0,0.15,0.2

Data 0.5,0.5,0.5
Data 0.5,0.5,0.5
Data 2.0,1.0,0.0
Data 0.5,0.2,0.25

Data 0.8,0.5,0.4
Data 0.2,0.4,0.2
Data 2.0,1.0,1.0
Data 0.0,0.25,0.25

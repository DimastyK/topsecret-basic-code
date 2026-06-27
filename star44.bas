'QB program by Alexander Lee
CLS
Color &Hff0000
For f=0 To 1200 Step 0.4
r=Sin(f*10)
x=160+120*r*Sin(f*2)
y=160+120*r*Cos(f*2)
If f=0 Then
x0=x
y0=y
Else
Line x0,y0,x,y
x0=x
y0=y
EndIf

Next f

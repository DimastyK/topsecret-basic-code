'QB program by Alexander Lee
CLS
For f=0 To 1200
r=Sin(f*8)
x=160+80*r*Sin(f)*2
y=160+160*r*Cos(f)
If f=0 Then
x0=x
y0=y
Else
Line x0,y0,x,y
x0=x
y0=y
EndIf
Next f

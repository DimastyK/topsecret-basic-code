'BBC Microbot, geoffl, powered by Google AI

CLS
'palete
Dim bp(3)
bp(0)=RGB(black)
bp(1)=RGB(red)
bp(2)=RGB(yellow)
bp(3)=RGB(white)

k=300
j=k*k
a=1.5
b=1.9
m=12
n=22
d=512

'cener screen
cx=160
cy=160

For x=1 To d
e=x/1024
em=Cos(e*m)
en=Cos(e*n)
x2=x*x
jx=j*x

For y=x To d
f=y/1024


'color
cv=4*Abs(a*em*Cos(f*n)+b*en*Cos(f*m))
Color bp(Int(cv) Mod 4)

w=x2+y*y
If w>0 Then
u=jx/w/2
vy=j*y/w/2

Pixel cx+u,cy-vy
Pixel cx+u,cy+vy
Pixel cx-u,cy-vy
Pixel cx-u,cy+vy
'mirror
Pixel cx+vy,cy-u
Pixel cx+vy,cy+u
Pixel cx-vy,cy-u
Pixel cx-vy,cy+u
EndIf

Next y
Next x

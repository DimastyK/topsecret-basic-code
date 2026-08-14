'Hex Tile, BBC MicroBot
'line must be fixed
CLS

v_=56/2'size
Dim x(12)
Dim y(12)
Dim u(12)
Dim v(12)

s=Pi/3
w=v_*Sqr(3)
d=v_*3/2
'Randomize &h1235678
n=0
x(0)=0
y(0)=v_
For l=1 To 11
x(l)=Sin(l*s)*v_
y(l)=Cos(l*s)*v_
u(l)=(x(l)+x(l-1))/2
v(l)=(y(l)+y(l-1))/2
Next l
o=0
For y_=0 To d+320 Step d
o=1-o
For x_=o*w/2 To 320+w/2 Step w
xo=x_
yo=y_
xp=x(5)
yp=y(5)
Color RGB(255,0,0)
For l=6 To 8
Line xo+xp,yo+yp,x(l)+xo,y(l)+yo
xp=x(l)
yp=y(l)
Next l
m=1+Int(Rnd()*6)
Color RGB(255,255,0))
Arc_(xo+x(m),yo+y(m),xo+u(m),yo+v(m),xo+x(m+1),yo+y(m+1))
For l=m-1 To m
Arc_(xo+u(4+l)*2,yo+v(4+l)*2,xo+u(3+l),yo+v(3+l),xo+x(4+l),yo+y(4+l))
Next l
Next x_
Next y_

Sub arc_(xc,yc,x1,y1,x2,y2)
a1=Atan2(y1-yc,x1-xc)
a2=Atan2(y2-yc,x2-xc)
If a2<a1 Then
a2=a2+2*Pi
EndIf
da=(a2-a1)/50'steps
r=Sqr((x1-xc)^2+(y1-yc)^2)
For a=a1 To a2 Step da
px=xc+r*Cos(a)
py=yc+r*Sin(a)
If (px>=0) And (px<320) And (py>=0) And (py<320) Then
Pixel px,py
EndIf
Next a
End Sub
'
'Flower tesselation by Peter McGavin
CLS
Dim co(9)
co(0)=RGB(0,0,0)
co(1)=RGB(0,0,255)
co(2)=RGB(0,255,0)
co(3)=RGB(0,255,255)
co(4)=RGB(255,0,0)
co(5)=RGB(255,0,255)
co(6)=RGB(255,255,0)
co(7)=RGB(255,255,255)

xc=160
yc=160
xs=175/720
ys=175/720
size=28
rin=5
Dim xx(8),yy(8),x(8),y(8),xp(8),yp(8)
s=Cos(Pi/5)
ymul=size/Sin(Pi/5)
xx(0)=0
xx(1)=-1
xx(2)=-1
xx(3)=0
xx(4)=1
xx(5)=1
xx(6)=0
xx(7)=0
xx(8)=0
yy(0)=0
yy(1)=s
yy(2)=2+s
yy(3)=2+2*s
yy(4)=2+s
yy(5)=1+s
yy(6)=1
yy(7)=0
yy(8)=1.5+s

For i=0 To 8
xx(i)=xx(i)*size
yy(i)=yy(i)*ymul
Next i

For a=0 To 9
aa=a*Pi/5
r00=Cos(aa)
r01=-Sin(aa)
r10=Sin(aa)
r11=Cos(aa)
For y_=0 To rin
y1=y_*ymul*(1+s)
For x_=y_ To rin
x1=(2*y_-x_)*size
If y_=0 Then
For i=0 To 8
y(i)=y1+yy(i)
x(i)=x1+xx(i)
Next i
GoTo 220
EndIf

If x1>size Then
y1=y1+ymul
For i=0 To 8
y(i)=y1+yy(i)
x(i)=x1-xx(i)
Next i
GoTo 220
EndIf

For i=0 To 8
y(i)=y1-yy(i)+ymul*(3+2*s)
x(i)=x1-xx(i)
Next i
220
y1=y1+ymul*(1+s)

For i=0 To 8
xp(i)=xc+xs*(r00*x(i)+r01*y(i))
yp(i)=yc+ys*(r10*x(i)+r11*y(i))
Next i

'Line xp(7),yp(7),xp(0),yp(0)
'For i=1 To 7
'Line xp(i-1),yp(i-1),xp(i),yp(i)
'Next i

Polygon 8,xp(),yp(),co(7),co(x_)
Next x_
Next y_
Next a

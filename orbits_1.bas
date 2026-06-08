'Orbits of a Dynamic System
'Lauerier,1991
Dim co(8)
co(0)=RGB(0,0,0)
co(1)=RGB(0,0,255)
co(2)=RGB(0,255,0)
co(3)=RGB(0,255,255)
co(4)=RGB(255,0,0)
co(5)=RGB(255,0,255)
co(6)=RGB(255,255,0)
co(7)=RGB(255,255,255)

CLS
Dim xa(8),ya(8),pa(8)
Restore cloud1
a=-0.5
b=2
For i=0 To 7
Read xa(i),ya(i),pa(i)
Next i

For k=0 To 7
x=xa(k)
y=ya(k)
p=pa(k)
GoSub l140
For n=0 To p
cc=n Mod 8
Color co(cc)
Pixel x*10+160,y*10+160
z=x
x=y+w
GoSub l140
y=w-z
Next n
Next k
'save image"orbit.bmp
End
l140:
w=x*(a+b/(1+Abs(x)))
Return

cloud1:
Data 2,0,200,4,0,400,6,0,600,8,0,800
Data 10,0,1000,12,0,1200,14,0,1400
Data 16,0,1600

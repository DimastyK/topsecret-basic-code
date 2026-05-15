'Orbits of Mira's System
CLS
Dim egacol(16) As integer
egacol(0)=RGB(0,0,0)
egacol(1)=RGB(0,0,170)
egacol(2)=RGB(0,170,0)
egacol(3)=RGB(0,170,170)
egacol(4)=RGB(170,0,0)
egacol(5)=RGB(170,0,170)
egacol(6)=RGB(170,85,0)
egacol(7)=RGB(170,170,170)
egacol(8)=RGB(85,85,85)
egacol(9)=RGB(85,85,255)
egacol(10)=RGB(85,255,85)
egacol(11)=RGB(85,255,255)
egacol(12)=RGB(255,85,85)
egacol(13)=RGB(255,85,255)
egacol(14)=RGB(255,255,85)
egacol(15)=RGB(255,255,255)


a!=0.7
b!=0.9998
c!=2-2*a!
x!=0.6
y!=12.1
w!=a!*x!+c!*x!*x!/(1+x!*x!)
For n=0 To 12000
If n>100 Then
Color egacol(8+(n Mod 8))
Pixel 160-x!*8,160+y!*8
End If
z!=x!
x!=b!*y!+w!
u!=x!*x!
w!=a!*x!+c!*u!/(1+u!)
y!=w!-z!
Next n

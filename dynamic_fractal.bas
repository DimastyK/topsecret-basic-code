'dynamic fractal
Dim ec(16) As integer
ec(0)=0
ec(1)=RGB(0,0,170)
ec(2)=RGB(0,170,0)
ec(3)=RGB(0,170,170)
ec(4)=RGB(170,0,0)
ec(5)=RGB(170,0,170)
ec(6)=RGB(170,85,0)
ec(7)=RGB(170,170,170)
ec(8)=RGB(85,85,85)
ec(9)=RGB(85,85,255)
ec(10)=RGB(85,255,85)
ec(11)=RGB(85,255,255)
ec(12)=RGB(255,85,85)
ec(13)=RGB(255,85,255)
ec(14)=RGB(255,255,85)
ec(15)=&hffffff

CLS
Option angle radians
a=1
b=3
dt!=0.1

For i=0 To 43/2
For j=0 To 37
x!=i
y!=j
For k=1 To 100
y!=y!+Sin(x!+a*Sin(b*x!))*dt!
x!=x!-Sin(y!+a*Sin(b*y!))*dt!
px=Int(x!*15)
py=Int(y!*15)
If px>=0 And px<320 And py>=0 And py<320 Then
Pixel px,py,ec((i+j) Mod 10)
EndIf
Next k
Next j
Next i

'QuadrupTwo fractal
CLS
Dim pa(16)
pa(0)=RGB(0,0,0)
pa(1)=RGB(0,0,170)
pa(2)=RGB(0,170,0)
pa(3)=RGB(0,170,170)
pa(4)=RGB(170,0,0)
pa(5)=RGB(170,0,170)
pa(6)=RGB(170,85,0)
pa(7)=RGB(170,170,10)
pa(8)=RGB(85,85,85)
pa(9)=RGB(85,85,255)
pa(10)=RGB(85,25,85)
pa(11)=RGB(85,255,255)
pa(12)=RGB(255,85,85)
pa(13)=RGB(255,85,255)
pa(14)=RGB(255,255,85)
pa(15)=RGB(255,255,255)

x=0
y=0
For i=0 To 50000
u=x
v=Log(Abs(x+19))

x=y-Sgn(x)*Sin(Log(Abs(-19*x-1)))*Atn(v*v)
y=-15-u

px=Int(x*3+180)
py=Int(y*3+180)

cl=Int(i/5000) Mod 16
If (px>=0) And (px<320)And (py>=0) And (py<320) Then
Pixel px,py,pa(cl)
EndIf
Next i

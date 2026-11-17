'Chip fractal
' picture differ from QB
CLS
Dim pa(10)
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
pa(10)=RGB(85,255,85)

x=0
y=0
For i=0 To 150000
v=Log(Abs(-19*x-1))
c=Int(i/5000) Mod 10
w=Log(Abs(x+19))
u=x
x=y-Sgn(x)*Cos(v*v)*Atn(w*w)
y=-15-u

px=Int(0.58*x+164)
py=Int(0.58*y+164)

If (px>=0) And (px<320)And (py>=0) And (py<320) Then
Pixel px,py,pa(c)
EndIf
Next i

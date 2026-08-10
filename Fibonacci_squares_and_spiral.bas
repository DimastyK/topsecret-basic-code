'Fibonacci squares and spiral
CLS
Dim f(14)
f(0)=1
f(1)=1
For n=2 To 14
f(n)=f(n-1)+f(n-2)
Next n
ccw=0'clockwise
sc=8'scale
For n=0 To 9
If ccw Then
s=1
Else
s=-1
EndIf
cx=159
cy=159
an=0
For i=0 To n
r=f(i)*sc
a0=an
a1=an+s*Pi/2
ux=Cos(a0)
uy=Sin(a0)
vx=Cos(a1)
vy=Sin(a1)
'rectangle
Line cx,cy,cx+r*ux,cy+r*uy
Line cx+r*ux,cy+r*uy,cx+r*(ux+vx),cy+r*(uy+vy)
Line cx+r*(ux+vx),cy+r*(uy+vy),cx+r*vx,cy+r*vy
Line cx,cy,cx+r*vx,cy+r*vy

'arc
If ccw Then
ab=a0
ae=a1
Else
ab=a1
ae=a0
EndIf
For tf=ab To ae Step 0.001
px=cx+r*Cos(tf)
py=cy+r*Sin(tf)

If (px>=0) And (px<320) And (py>=0) And (py<320) Then
Pixel px,py
EndIf
Next tf
nr=f(i+1)*sc
cx=cx+(r-nr)*Cos(a1)
cy=cy+(r-nr)*Sin(a1)
an=a1
Next i
Next n

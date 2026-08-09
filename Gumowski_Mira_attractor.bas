'Gumowski Mira attractor
CLS
Dim float a=-0.77,b=0.9
x=5
y=0
sc=15'scale
For i=1 To 10000
xx=b*y+fngm(x)
y=fngm(xx)-x
x=xx
Pixel 159+sc*x,159+sc*y
Next i


Function fngm(n)
fngm=a*n+(1-a)*2*n^2/(1+n^2)
End Function

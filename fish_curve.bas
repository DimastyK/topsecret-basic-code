'Curve fish
CLS

sc=120
sq2=Sqr(2)
For i=0 To 100
d=Cos(i*6.28/100)
t=Sin(i*6.28/100)
x=160+(d-t*t/sq2)*sc
y=160+t*d*sc
If i=0 Then
px=x
py=y
Else
Line x,y,px,py
px=x
py=y
EndIf
Next i

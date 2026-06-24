'QB program by Vladimir1982
CLS
a=0
d=50

Do
For x=1 To 10
For y=1 To 5
If Sin(x2-x1)<>0 Then
x1=(x-6)*Cos(a)/Sin(x2-x1)*2
EndIf
y1=(x-6)*Sin(a)
x2=(x-6)*Cos(a)
Pixel 160+x2*18*d/(y1-d),160-(y1-1)*18*d/(x1-d)
Next y
Next x
a=a+3/20
Loop Until Inkey$=Chr$(27)

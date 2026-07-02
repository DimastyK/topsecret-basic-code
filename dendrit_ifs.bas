'Dendrit IFS
CLS

x=0
y=0
a=0
b=0.7
c=0.7
d=0
Do
If Rnd()<=0.5 Then
xx=a*x-b*y
yy=b*x+a*y
Else
xx=c*x-d*y+1-c
yy=d*x+c*y-d
EndIf
Pixel 100+200*xx,180-200*yy
x=xx
y=yy
Loop Until Inkey$=Chr$(27)

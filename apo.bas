'Apollo set
CLS
x=0.2
y=0.3
r=Sqr(3)
Randomize Timer
Do
a=Rnd()
a0=3*(1+r-x)/((1+r-x)*(1+r-x)+y*y)-(1+r)/(2+r)
b0=3*y/((1+r-x)*(1+r-x)+y*y)

If (a<=0.333) And (a>=0) Then
x1=a0
y1=b0
EndIf

a1=-0.5
b1=r/2
a2=-0.5
b2=-r/2
fix=a0/(a0*a0+b0*b0)
fiy=-b0/(a0*a0+b0*b0)

If (a<=0.667) And (a>=0.333) Then
x1=fix*a1-fiy*b1
y1=fix*b1+fiy*a1
EndIf

If (a<=1) And (a>=0.667) Then
x1=fix*a2-fiy*b2
y1=fix*b2+fiy*a2
EndIf

x=x1
y=y1

Pixel 160+30*x,160+30*y,&Hff0000

Loop Until Inkey$=Chr$(27)

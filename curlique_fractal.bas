'curlique fractal
CLS

x=0
y=0
f=0
x1=0
y1=0
ang=0
r=50
Do
ang=ang+0.00001
If ang>8 Then
ang=0
EndIf
r=r+0.000001
f=f-Pi
x=x+Cos(f*f)
y=y+Sin(f*f)
x1=x+r+Cos(ang)*r/8
y1=y+r+Sin(ang)*r
x3=r-Cos(ang)*r/8-x
'Color RGB(Int(f*255) And 255,0,0)
Pixel x1+100,y1+160
Pixel x3+100,y1+160

Loop Until Inkey$=Chr$(27)

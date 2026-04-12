'Parametric Plot, liberty basic
Color &H00ffff,255
CLS
xo=160
yo=160
mu=80
For t=-8 To 8 Step 0.0001
x=Sin(9.52*t)+1
y=Cos(9.52*t)^4*Sin(Sin(4.8*t))

Pixel xo+mu*x,yo+mu*y
Pixel xo-mu*x,yo+mu*y
Pixel xo+mu*y,yo+mu*x
Pixel xo+mu*y,yo-mu*x

Next t

'hypotrochoid
Color &Hffffff
CLS
r=5
ra=3
d=5
For i=0 To 5000
x=(r-ra)*Cos(i)+d*Cos(((r-ra)/ra)*i)
y=(r-ra)*Sin(i)-d*Sin(((r-ra)/ra)*i)
Pixel x*15+160,y*15+160
Next i

'Guilloche Pattern
Option angle degrees
CLS
For s=1 To 45 Step 2
For a=1 To 360
x=(60+s*Sin(10*a))*Cos(a)
y=(40+s*Sin(7*a))*Sin(a)
Pixel x+160,y+160
Next a
Next s

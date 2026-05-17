'hypocycloid
Color &Hffffff
CLS
k=3.8
For i=0 To 10000' Step 0.01

x=(k-1)*Cos(i)+Cos((k-1)*i)
y=(k-1)*Sin(i)-Sin((k-1)*i)
Pixel 160+x*45,160+y*45
Next i
'Save image "hypo.bmp"

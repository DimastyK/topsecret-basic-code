'H-tree fractal
Color &Hffffff,0
CLS

drawhf(160,160,80,5)

Sub drawhf x1,y1,rz,min
Local x11,y11,x01,y01,x00,y00,x10,y10

x11=x1+rz
y11=y1+rz
x01=x1-rz
y01=y1+rz
x00=x1-rz
y00=y1-rz
x10=x1+rz
y10=y1-rz

drawh(x1,y1,rz)

If rz/2>=min Then
drawhf(x11,y11,rz/2,min)
drawhf(x01,y01,rz/2,min)
drawhf(x10,y10,rz/2,min)
drawhf(x00,y00,rz/2,min)
End If
End Sub

Sub drawh x,y,raz
Line x-raz,y-raz,x-raz,y+raz
Line x-raz,y,x+raz,y
Line x+raz,y-raz,x+raz,y+raz
End Sub

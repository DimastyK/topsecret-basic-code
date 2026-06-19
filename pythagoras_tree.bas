'Pythagoras Tree

Color &Hffffff
CLS

drw(140,220,55,0)
'Save image"ptree.bmp"

Sub drw x,y,l,a
If l>4 Then
rct(x,y,l,a)
drw(x-l*Sin(a),y-l*Cos(a),l/Sqr(2),a+Pi/4)

drw(x-l*Sin(a)+l/Sqr(2)*Cos(a+Pi/4),y-l*Cos(a)-l/Sqr(2)*Sin(a+Pi/4),l/Sqr(2),a-Pi/4)
EndIf
End Sub

Sub rct x1,y1,l,a
x2=x1+l*Cos(a)
y2=y1-l*Sin(a)

x3=x1+l*Sqr(2)*Cos(a+Pi/4)
y3=y1-l*Sqr(2)*Sin(a+Pi/4)

x4=x1+l*Cos(a+Pi/2)
y4=y1-l*Sin(a+Pi/2)

Line x1,y1,x2,y2
Line x2,y2,x3,y3
Line x3,y3,x4,y4
Line x4,y4,x1,y1
End Sub

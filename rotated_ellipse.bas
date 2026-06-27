'Rotated Ellpse, JB forum
CLS
cx=160
cy=160
a=0.95*cx
b=a*12/15

For t=0 To 900 Step 10
ellips(cx,cy,a,b,-t*Pi/180)
a=a*0.96
b=b*0.96
Next t
'Save image"re.bmp"
Sub ellips(cx,cy,a,b,th)
Local t
If a>b Then
st=a
Else
st=b
EndIf

'Color Abs(&Hffffff*Sin(th!))
Color Abs(&Hffff*Sin(th))

For t=0 To 2*Pi Step 1/st
x=a*Cos(th)*Cos(t)-b*Sin(th)*Sin(t)
y=a*Sin(th)*Cos(t)+b*Cos(th)*Sin(t)
Pixel x+cx,y+cy
Next t
End Sub

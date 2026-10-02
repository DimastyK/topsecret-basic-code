'Gradient Spiral+Bayer dither
CLS
Dim ba(4,4)

Restore bm

For y=0 To 3
For x=0 To 3
Read ba(x,y)
Next x
Next y
bm:
Data 0,8,2,10
Data 12,4,14,6
Data 3,11,1,9
Data 15,7,13,5

For y=-160 To 160
For x=-160 To 160
d=Sqr(x*x+y*y)
a=Atan2(y,x)

v=(Cos(2*Pi*d/(160)+a)+1)/2
r=Int(v*255)

'Simple dither.Try rgb(r,0,0) instead
th=ba(y And 3,x And 3)

If (r+th*17)>=256 Then
co=RGB(255,255,255)
Else
co=0
EndIf

Pixel x+160,y+160,co',RGB(r,0,0)
Next x
Next y

'Save image"gs.bmp"

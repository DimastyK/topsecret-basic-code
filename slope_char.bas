'Sloped characters
Color &Hffffff0
CLS
Font 4
cy=10
'width
For v=1 To 6
cx=10
cy=cy+8*v
'height
For h=1 To 5
Print @(0,0) Chr$(136)'"$"
cx=cx+10*h
'draw
For y=0 To 11
For x=0 To 7
If Pixel(x,y) Then
For k=0 To v-1
For j=0 To h-1
Pixel cx+h*x+j-y*h/2,cy+v*y+k
Next j
Next k
EndIf
Next x
Next y

Next h
Next v

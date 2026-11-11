'BBC Microbot,geoffl
'the smouldering ashes of Sierpinsky
CLS
For x=0 To 255
For y=0 To 255
If (x And y)>0 Then
y=y+(x And y)\2
EndIf
Pixel x+y\2,320-y
Next y
Next x

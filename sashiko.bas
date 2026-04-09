'Hitomezashi sashiko stitch
' Space to repeat, Esc - quit
Option default integer
Randomize &h123456
sashiko()
Do
k$=Inkey$
If k$=Chr$(32) Then
sashiko()
EndIf
Loop Until k$=Chr$(27)

Sub sashiko
CLS
For n=0 To 1
r=Int(255*Rnd())
For y=0 To 319 Step 8
f=r And 1
For x=0 To 319 Step 8
If f Then
If n Then
Line x,y,x+8,y,1,&H00ff00
Else
Line y,x,y,x+8,1,&H00ff00
EndIf

EndIf
f=1-f
Next x
r=(r>>1) Or(128*(r And 1))
Next y
Next n
End Sub

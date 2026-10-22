'BBC Microbot
CLS
x=1
y=0
s=10
Randomize &H12345678

Do
If Rnd()<0.5 Then
t=(x+y)/2
y=(y-x)/3
Else
t=(x-y+1)
y=(y+x-1)/3
EndIf
x=t
px=Int(40+40*x)
py=Int(160-40*y)
If (px>=0) And (px<319) And (py>=0) And (py<319) Then
Pixel px,py
End If
Loop Until Inkey$=Chr$(27)

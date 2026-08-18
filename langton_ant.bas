'Langton ant
CLS

x=160
y=160
d=0
Do
If Pixel(x,y)=0 Then
Pixel x,y,RGB(255,255,255)
d=(d+1) And 3
Else
Pixel x,y,0
d=(d-1) And 3
EndIf

Select Case d
Case 0
y=y-1
Case 1
x=x-1
Case 2
y=y+1
Case 3
x=x+1
End Select

'If (x<0) Or (x>319) Or (y<0) Or (y>319)Then
'Exit Do
'EndIf
If x<0 Then x=319
If x>319 Then x=0
If y<0 Then y=319
If y>319 Then y=0

Loop Until Inkey$=Chr$(27)

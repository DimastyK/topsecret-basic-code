y%=0
Do
Blit 0,1,0,0,320,319
For x=0 To 319
If (x Xor y%) Mod 9 <>0 Then
c=0
Else
c=&hffffff
EndIf
Pixel x,319,c
Next x
y%=y%+1
Loop Until Inkey$=Chr$(27)
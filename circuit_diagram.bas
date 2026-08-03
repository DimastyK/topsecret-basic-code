'Circuit diagram by Naoki Tsutae

t=0
For y=0 To 319
For x=0 To 319
cc=Abs(t+((x-t)Xor(x+t))^3) Mod 997
If cc<97 Then
cc=0
Else
cc=&Hffffff
EndIf

Pixel x,y,cc
Next x
t=t+1
Next y

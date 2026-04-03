Randomize &h12345
Dim integer w(8)
'precalc
For i=0 To 7
b1%=1
b2%=16
v%=i
For j=0 To 2
If (v% And b1%) Then v%=(v% Or b2%)
b1%=b1%+b1%
b2%=b2%/2
Next j
w(i)=v%
'Print i,v%
Next i

CLS

For x1=0 To 39
For y1=0 To 39

Do
co=Rnd()*&hffffff
Loop Until co

For yy=0 To 4
s%=Int(7*Rnd())
b1%=16
s%=w(s%)
For xx=0 To 4
If (s% And b1%) Then
Pixel x1*8+xx,y1*8+yy,co'&hffffff
EndIf
b1%=b1%/2
Next xx
Next yy
Next y1
Next x1
'Save image "si2.bmp"
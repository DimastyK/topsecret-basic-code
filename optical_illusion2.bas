'Optical illusion 2
Color &Hffffff,0
CLS
cx=300
sz=30
'Line 0,0,319,0
For j=0 To 2*cx/sz
y=j*sz
d=Abs(((j+2) Mod 4)-2)
For x=0 To 2*cx+2*sz Step 2*sz
xx=x+sz/3*d-2*sz
For tx=1 To sz-1
For ty=1 To sz-1
px=xx+tx+2+sz-2
py=y+ty
If (px<320) And (py<320) And(px>=0) And (py>=0) Then
Pixel px,py
EndIf
Next ty
Next tx

Next x
Next j

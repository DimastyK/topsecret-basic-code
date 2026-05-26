'?Some graphics from Mr Dony's book. It uses the "bugs in love" algorithm
CLS
Randomize &H12345678
npts=8'6+2*Int(Rnd()*5)
tris=21
coef=0.95
invc=1-coef
r=160
Dim cx(npts+1)
Dim cy(npts+1)
Dim tx(3)
Dim ty(3)
dang=2*Pi/npts
ang=0
'coords
For i=0 To npts-1
cx(i)=r*Sin(ang)
cy(i)=r*Cos(ang)
ang=ang+dang
Next i
cx(npts)=cx(0)
cy(npts)=cy(0)
'for each sector
For i=1 To npts
'start from a polygon side
tx(0)=0
ty(0)=0
If (i And 1)=1 Then
tx(1)=cx(i-1)
ty(1)=cy(i-1)
tx(2)=cx(i)
ty(2)=cy(i)
Else 'swap vertices
tx(1)=cx(i)
ty(1)=cy(i)
tx(2)=cx(i-1)
ty(2)=cy(i-1)
EndIf
'for each ieation in a sector
For j=1 To tris
'draw the triangle
Line 160+tx(0),160+ty(0),160+tx(1),160+ty(1)
Line 160+tx(1),160+ty(1),160+tx(2),160+ty(2)
Line 160+tx(2),160+ty(2),160+tx(0),160+ty(0)
If j=tris Then
Exit For
EndIf
'calculate a smaller
ttx=tx(0)*invc+tx(1)*coef
tty=ty(0)*invc+ty(1)*coef
tx(1)=tx(1)*invc+tx(2)*coef
ty(1)=ty(1)*invc+ty(2)*coef

tx(2)=tx(2)*invc+tx(0)*coef
ty(2)=ty(2)*invc+ty(0)*coef
tx(0)=ttx
ty(0)=tty
Next j
Next i

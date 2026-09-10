'Voronoi dagram QB64PE
CLS
np=20
Dim xa(np)
Dim ya(np)
Dim ra(np)
Dim ga(np)
Dim ba(np)

Randomize timer'&H1234567
max=Sqr(2*320*320)
For i=0 To np-1
xa(i)=Int(Rnd()*320)
ya(i)=Int(Rnd()*320)
ra(i)=Int(Rnd()*255)
ga(i)=Int(Rnd()*255)
ba(i)=Int(Rnd()*255)
Next i
For x=0 To 319
For y=0 To 319
min=max
For p=0 To np-1
d=Sqr((xa(p)-x)^2+(ya(p)-y)^2)
If d<min Then
min=d
cl=p
EndIf
Next p
rc=bnd(ra(cl)-min)

gc=bnd(ga(cl)-min)
bc=bnd(ba(cl)-min)

Pixel x,y,RGB(rc,gc,bc)
Next y
Next x

Function bnd(v)
If v<0 Then v=0
bnd=Abs(v Mod 255)
End Function

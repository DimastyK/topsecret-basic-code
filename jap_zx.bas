'Japanese pattern by Uwe Geiken,ZX
CLS
Dim a(5)
a(1)=2
a(3)=2
a(5)=-7

For x=0 To 30
For y=1 To 30
For j=-1 To 1
For r=0 To 1
cx=x*10
cy=y*10
For n=1 To 4
fl1=((x/2+y2)=Int(x/2+y/2))
tx=a(n+r)*j*mor(r)+cx
ty=a(n+1-r)*j*mor(fl1)+cy
Line cx,cy,tx,ty
cx=tx
cy=ty
Next n
Next r
Next j
Next y
Next x

Function mor(n integer)
mor=(n=1)*2-1
End Function

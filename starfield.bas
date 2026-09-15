'Stars, Power Basic
CLS
Dim co(64)
For m=0 To 21
co(m)=RGB(m*12,m*12,m*8)
Next m
For m=22 To 31
co(m)=RGB(255,255,m*8)
Next m
For m=32 To 63
co(m)=RGB(255,255,255)
Next m

zz=128
Dim zx(320)
Dim zy(320)
For m=0 To 319
zx(m)=160+100*Sin(m/160*Pi)
zy(m)=100+100*Sin(m/160*Pi)
Next m
dn=100
Dim x_(dn),y_(dn),z_(dn),aa(dn),ab(dn)
For m=0 To dn
x_(m)=Int(320*Rnd())
y_(m)=Int(110+20*Rnd())
z_(m)=Int(128*Rnd())
aa(m)=0
ab(m)=0
Next m

v=0
Do

For m=0 To dn
Pixel aa(m),ab(m),0
z_(m)=z_(m)+1

If z_(m)>127 Then
x_(m)=Int(20+280*Rnd())
y_(m)=Sin(v/7)*7+Sin((x_(m)-v)/10)*7+120
z_(m)=0
EndIf
a=(zx(v)*z_(m)-zz*x_(m))/(z_(m)-zz)
b=(zy(v)*z_(m)-zz*y_(m))/(z_(m)-zz)
If (a>-1) And (a<320) And (b>1) And (b<320) Then
Pixel a,b,co(z_(m)/2)
aa(m)=a
ab(m)=b
EndIf
Next m
v=v+1
If v>319 Then v=0
Loop Until Inkey$=Chr$(27)

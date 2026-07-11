'Kaleidoscope BBC Basic, my mod
CLS
FRAMEBUFFER create
ims=160
n=100
ims2=ims*2
r=ims/Sqr(2)
Dim px(n),py(n),vx(n),vy(n),col(n)
Randomize 12345
For i=0 To n-1
px(i)=Rnd(r)-r/2
py(i)=Rnd(r)-r/2
vx(i)=7*Rnd()-3.5
vy(i)=7*Rnd()-3.5
rr=Int(255*Rnd())
gg=Int(255*Rnd())
bb=Int(255*Rnd())
col(i)=RGB(rr,gg,bb)
Next i

Do
'FRAMEBUFFER write f
'CLS
For i=0 To n-1
y=py(i)
For s=0 To 11
an=s*Pi/3
If s=6 Then y=-y
xr=160+px(i)*Cos(an)-y*Sin(an)
yr=160+px(i)*Sin(an)+y*Cos(an)
Color 0
Pixel xr,yr
Next s

px(i)=px(i)+vx(i)
py(i)=py(i)+vy(i)
If Abs(px(i))>r Then vx(i)=-vy(i)
If Abs(py(i))>r Then vy(i)=-vy(i)
y=py(i)
For s=0 To 11
an=s*Pi/3
If s=6 Then y=-y
xr=160+px(i)*Cos(an)-y*Sin(an)
yr=160+px(i)*Sin(an)+y*Cos(an)
Color col(i)
Pixel xr,yr
Next s
Next i
'FRAMEBUFFER copy f,n
Loop Until Inkey$=Chr$(27)
FRAMEBUFFER write n

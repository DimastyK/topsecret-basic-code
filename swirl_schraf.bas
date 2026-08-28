'Swil by Eric Schraf
CLS
np=320
n=180
m=30
k=0.02
Randomize timer'&H12345678
For i=0 To n
x=Rnd()
y=Rnd()
For j=0 To m
xp=Int(np*x)
yp=Int(np*y)
sx=xp+(320-np)/2
sy=yp
If j>0 Then
col=prevx*prevx+prevy*prevy
rr=4*(col Mod 256)
gg=col Mod 256
bb=(255-Int(col/2)) Mod 256
Color RGB(rr And 255,gg And 255,bb And 255)
Line prevx,prevy,sx,sy
EndIf
prevx=sx
prevy=sy

xx=2*x-1
yy=2*y-1

If xx<>0 Then
an=Atn(yy/xx)
Else
an=Pi/2*Sgn(yy)
EndIf

If xx<0 Then an=an+Pi*Sgn(yy)
an=an+4*Pi/3+Sin(6*Pi*Sqr(xx^2+yy^2))/4
x=x+k*Cos(an)
y=y+k*Sin(an)
If (x<=0) Or (x>=1) Or (y<=0) Or (y>=1) Then Exit For
 Next j
 Next i

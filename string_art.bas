'String art K Moerman 2026
CLS
w=320
h=320
w2=w/2
h2=h/2
np=40'number of points
sh=0.5'dsplaces points
ph=Pi/4'rotaton angle of figure
asp=4/4'aspect ratio
ans=2*Pi/(np-1)
For u=0 To np-1
n=u
GoSub 220
x1=x
y1=y
For v=1 To u-1
If ((u+2*v) Mod 3)<>0 Then GoTo 180
n=v
GoSub 220
x2=x
y2=y
Line x1,y1,x2,y2
180
Next v
Next u
End
220
a=ans*n
a=a-sh*Sin(a+ph)
x=w2+asp*h2*Cos(a)
y=h2+h2*Sin(a)
Return

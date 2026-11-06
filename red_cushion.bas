'Red Cushion by Akiyoshi Ktaoka

CLS
Dim l(319)
For x=0 To 319
t=x/319
l(x)=ACos(t*2-1)/Pi
Next x

For x=0 To 319
For y=0 To 159
u=l(x)*15
v=l(y+y)*15

p=Int(u)
q=Int(v)
pp=u-p
qq=v-q

c=0
If ((p+q) And 1)=0 Then c=1-c
sx=pp-0.5
sy=qq-0.5
cx=Abs(Abs(sx)-0.3)
cy=Abs(Abs(sy)-0.3)

If x<160 Then sx=-sx
If y<80 Then sy=-sy

If (Sgn(sx)<>Sgn(sy) Or(p=7 And q=7)) Then
If (cx<0.14 And cy<0.14) Then c=1-c
EndIf

If c=1 Then
Pixel x,y*2,RGB(red)
Pixel x,y*2+1,RGB(red)

Else
Pixel x,y*2,RGB(white)
Pixel x,y*2+1,RGB(white)

EndIf
Next y
Next x

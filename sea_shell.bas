'Shell, Liberty BASIC
CLS
xmax=320
ymax=320
Dim x(1600),y(1600)
cx=340
cy=390
st=Pi/200
i=0
ra=0
dr=0
For a=0 To Pi*8 Step st
x(i)=160+ra*Cos(a)
y(i)=160+ra*Sin(a)
dr=dr+1/1700
ra=ra+dr^2
i=i+1
Next a
Randomize &H1234567
r=Rnd(0)^2
g=Rnd(0)^2
b=Rnd(0)^2
pn=0
For i=0 To 729'1139
dx=x(i+400)-x(i)
dy=y(i+400)-y(i)
dist=Sqr(dx*dx+dy*dy)
dx=dx/dist
dy=dy/dist
pn=pn+0.73
sz=1
If i>950 Then
sz=6
Else
If i>820 Then
sz=5
Else
If i>370 Then
sz=3
EndIf
EndIf
EndIf

For j=0 To dist
shade=1-((dist/2-j+1/2)/(dist/2))^2
rr=shade*Int(127+127*Sin(r*pn))
If rr<0 Then rr=0

gg=shade*Int(127+127*Sin(g*pn))
If gg<0 Then gg=0

bb=shade*Int(127+127*Sin(b*pn))
If bb<0 Then bb=0
Col=RGB(rr,gg,bb)

Box x(i)+j*dx,y(i)+j*dy,sz,sz,1,col,col
Next j
Next i

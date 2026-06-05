'figure, Luis Alberto Migliorero
CLS
dr=Pi/180
xc=160
yc=160
h2=Pi/2
k2=2
k3=3
k5=0.25
k6=6
k8=8
ra=80
u=1
z=0
For rs=ra To 0 Step -1.5
For a=0 To 360 Step 0.1
t=a*dr
p1=Abs(Cos(k3*t))+k2*(k5-Abs(Cos(k3*+h2)))
p2=k2+k8*Abs(Cos(k6*t+h2))
r=rs*(u+p1/p2)
x2=xc+r*Cos(t)
y2=yc+r*Sin(t)
cc=1+Int((ra-rs)/10)
'EGA color
If cc And 8 Then
cv=255
Else
cv=127
End If
If cc And 1 Then
bb=cv
Else
bb=0
End If
If cc And 2 Then
gg=cv
Else
gg=0
End If
If cc And 4 Then
rr=cv
Else
rr=0
End If

Pixel x2,y2,RGB(rr,gg,bb)
Next a
Next rs

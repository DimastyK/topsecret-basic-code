'Doyle Spirals, Liberty BASIC
Option default float
Dim integer midx=160
Dim integer midy=160
Dim integer r,c
Dim float angle,dist,ks
Dim float x,y

Dim integer colm=4'1-4
ks=0.28' scale
Dim float rd=Pi/180
CLS
angle=0
sc=2*ks
dist=2*6.5*ks

For r=1 To 9
GoSub doyle
Next r

End
doyle:
For c=1 To 20
angle=angle-18
 x=midx+Sin(angle*rd)*dist
 y=midy-Cos(angle*rd)*dist
 GoSub sphere
Next c

dist=dist+sc*0.85
sc=sc*1.3
dist=dist+sc*0.85

angle=-9
For c=1 To 20
angle=angle-18
 x=midx+Sin(Rad(angle))*dist
 y=midy-Cos(Rad(angle))*dist
 GoSub sphere
Next c

dist=dist+sc*0.85
sc=sc*1.3
dist=dist+sc*0.85

angle=angle+9
Return

sphere:

Local float xs,ys,radius,t,hue,shade
Local integer level,cr,cg,cb,col
xs=x
ys=y

For radius=sc To 0 Step -0.5
t=radius/sc

Select Case colm

Case 1
shade=40+215*t
col=RGB(Int(shade,Int(shade*0.9),Int(shade*0.7))

Case 2
hue=(radius*25+dist*6) Mod 360
cg=127+127*Cos(Rad(hue-120))
cb=127+127*Cos(Rad(hue-240))
cr=127+127*Cos(Rad(hue))
col=RGB(cr,cg,cb)

Case 3
cr=255
cg=Int(200*t)
cb=Int(80*t)
col=RGB(cr,cg,cb)

Case 4
cb=255
cg=Int(200*t)
cr=Int(80*t)
col=RGB(cr,cg,cb)

Case Else
level=Int(256-(radius/ks)*2)
If level<0 Then level=0
If level>255 Then level=255
col=RGB(level,level,level)

End Select

Circle xs,ys,radius,1,1,col,col

xs=xs-0.5*ks
ys=ys-0.2*ks
Next radius
Return

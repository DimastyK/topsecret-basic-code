'Color Wheel
CLS
For y=0 To 319
dy=y-160
For x=0 To 319
dx=x-160
dist=Sqr(dx*dx+dy*dy)
If dist<=160 Then
theta=Atan2(dx,dy)
hue=(theta+Pi)/2/Pi
sat=1
bri=1
u=Int(bri*255+0.5) And 255
If sat=0 Then rr=RGB(u,u,u)
h=(hue-Int(hue))*6
f=h-Int(h)
rr=&Hffffff
p=Int(bri*(1-sat)*255+0.5) And 255
q=Int(bri*(1-sat*f)*255+0.5) And 255
t=Int(bri*(1-sat*(1-f))*255+0.5) And 255
Select Case Int(h)
Case 0
rr=RGB(u,t,p)
Case 1
rr=RGB(q,u,p)
Case 2
rr=RGB(p,u,t)
Case 3
rr=RGB(p,q,u)
Case 4
rr=RGB(t,p,u)
Case 5
rr=RGB(u,p,q)
End Select
Pixel x,y,rr
EndIf
Next x
Next y

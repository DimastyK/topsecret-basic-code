'Modular multplication circle
xmax=320
ymax=320
top_m=10
Dim x(400),y(400)

r=ymax/2-top_m-10
xc=xmax/2
yc=ymax/2+top_m

m=298:p=60
'm=300:p=158
'm=276:p=167
'm=300:p=77
'm=224:p=91

Color &Hffffff,0
CLS

For n=0 To m-1
ang=2*Pi*n/m+Pi/2
x(n)=xc-r*Cos(ang)
y(n)=yc-r*Sin(ang)
Next n

Circle xc,yc,r

For n=0 To m-1
v=(n*p) Mod m
Line x(v),y(v),x(n),y(n)
Next n

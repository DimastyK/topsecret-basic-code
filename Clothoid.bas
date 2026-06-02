'Clothoid
CLS
t=10
n=10000
scale=100
dt=t/n
xc=160
yc=160

For i=0 To 1
tm=0
x0=xc
y0=yc
prevx=0
prevy=0

For j=0 To n
dx=Cos(tm*tm)*dt
dy=Sin(tm*tm)*dt
tm=tm+dt
currx=prevx+dx
curry=prevy+dy
x1=xc+(1-2*i)*currx*scale
y1=yc-(1-2*i)*curry*scale
Line x0,y0,x1,y1
x0=x1
y0=y1
prevx=currx
prevy=curry
Next j
Next i

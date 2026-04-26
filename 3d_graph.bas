'Program I wrote 1993
CLS
Dim f,asp As float
dx=6
maxx=319
maxy=319
n=20
Dim p(n+1)
xmin=-4
xmax=4
ymin=-3
ymax=3
xst=dx*(xmax-xmin)/maxx
x=xmin
yst=(ymax-ymin)/n
y=ymin
dy=maxy/n/2
asp=maxy/10
For i=1 To n
l300(x,y)
p(i)=i*dy+f
y=y+yst
Next i

For j=dx To maxx Step dx
x=x+xst
y=ymin
z0=0
For i=1 To n
l300(x,y)
k=i*dy+f
If k>z0 Then
Line j,319-p(i),j+dx,319-k,1,&Hffffff
z0=k
EndIf
p(i)=z0
y=y+yst
Next i
Next j
Sub l300 x,y
r=x*x+y*y+1
f=5*asp*(Cos(r)/r+0.1)
End Sub

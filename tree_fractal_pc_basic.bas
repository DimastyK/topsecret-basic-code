'tree fractal IBM PC BASIC
CLS
da=Pi/4
shrink=0.67
a=Pi/2
l=80
level=0
maxlev=10
x=159
y=0
Dim xs(maxlev+1)
Dim ys(maxlev+1)
GoSub l1000
'save image"treef.bmp
End
l1000:
dx=l*Cos(a)
dy=l*Sin(a)
nx=x+dx
ny=y+dy
Line x,319-y,nx,319-ny
xs(level)=x
ys(level)=y
x=nx
y=ny
level=level+1
a=a+da
l=l*shrink
If level<maxlev Then GoSub l1000

a=a-da*2
If level<maxlev Then GoSub l1000

a=a+da
l=l/shrink
level=level-1
x=xs(level)
y=ys(level)
Return

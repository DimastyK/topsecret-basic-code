'BBC Microbot, geoffl

CLS
'palete
Dim bp(3)
bp(0)=RGB(black)
bp(1)=RGB(red)
bp(2)=RGB(yellow)
bp(3)=RGB(white)

k=200
j=k*k
a=1.5
b=1.9
m=12
n=22
'cener screen
cx=160
cy=160

For x=1 To 990 Step 2
e=x/900'1024
xsq=x*x
fnem=Cos(e*m)
fnen=Cos(e*n)

For y=1 To 990 Step 2
f=y/900'1024

fnfn=Cos(f*n)
fnfm=Cos(f*m)

'color
cv=4*Abs(a*fnem*fnfn+b*fnen*fnfm)
co=bp(Int(cv) Mod 4)

w=xsq+y*y
u=Int(j*x/w)
v=Int(j*y/w)

'1
px=cx+u
py=cy+v
Pixel px,py,co
'2
px=cx+u
py=cy-v
Pixel px,py,co
'3
px=cx-u
py=cy+v
Pixel px,py,co
'4
px=cx-u
py=cy-v
Pixel px,py,co

Next y
Next x

'Barnsley fractal
'by Hans Lauwerier,1995
CLS
xm=160
ym=160
'data system
a=0.3
a2=Sqr(2)
b1=Sqr(2)/(1-a)
b2=-a/(1-a)
c=1/Sqr(2)
xc=0
yc=0.7
delh=1.6
delv=1.2
n1=160
n2=Int(n1*delv/delh)
'colours
Dim col(7)
For i=0 To 6
Read col(i)
Next i
Data 0,1,9,4,12,14,0
Dim ega(16)
ega(0)=RGB(0,0,0)
ega(1)=RGB(0,0,170)
ega(4)=RGB(170,0,0)
ega(9)=RGB(85,85,255)
ega(12)=RGB(255,85,85)
ega(14)=RGB(255,255,85)

'main
For i=0 To n1
For j=-n2 To n2
x=xc+i*delh/n1
y=yc+j*delv/n2
For k=1 To 50
If x>0 Then
z=x
x=-1+a2*y
y=b1*z+b2*y
Else
z=x
x=1-a2*y
y=-b1*z+b2*y
EndIf

If x*x+(y-c)*(y-c)>20 Then
l=(1+k) Mod 6
If (k>4) And (k<25) Then
Color ega(col(l))
Pixel xm+i,ym-j',ega(col(l))
Pixel xm-i,ym-j',ega(col(l))
Exit For
EndIf
EndIf

Next k
Next j
Next i

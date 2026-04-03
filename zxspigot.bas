'ZX spigot
z$=""
a=10000
n=6525
Dim r(n)
For i=1 To n
r(i)=2000
Next i
r(n-1)=0
c=0
For k=n-1 To 1 Step -14
d=0
i=k
For j=i To 1 Step -1
d=d+r(j)*a
b=2*j-1
r(j)=d-Int(d/b)*b
d=Int(d/b)
If j>1 Then d=d*(j-1)
Next j
v=c+Int(d/a)
c=d-Int(d/a)*a
'If v<10 Then Print "000";:GoTo l270
'If v<100 Then Print "00";:GoTo l270
'If v<1000 Then Print "0";:GoTo l270
'l270:
'Print v;
z$=z$+Format$(v,"%04g")
Print @(0,0) z$
Next k
'Save image"zx.bmp"

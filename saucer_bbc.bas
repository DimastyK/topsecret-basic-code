'Saucer BBC Basic
CLS
xs=0.5
ys=0.5
a=159
b=a*a
c=160
For x=0 To a Step xs
s=x*x
p=Sqr(b-s)
For i=-p To p Step 6*ys
r=Sqr(s+i*i)/a
q=(r-1)*Sin(24*r)
y=Int(i/3+q*c)
If i=-p Then
m=y
n=y
EndIf
If y>m Then m=y
If y<n Then n=y
If (m=y) Or (n=y) Then
Pixel 160-x,160-y
Pixel 160+x,160-y
EndIf
Next i
Next x

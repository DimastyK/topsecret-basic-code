'Cesaro fractal
CLS
n=3
cc=Pi/180
For i=0 To 3
i1=i*90+45
i2=(i+1)*90+45
r=3
funct(r*Cos(i1*cc),r*Sin(i1*cc),r*Cos(i2*cc),r*Sin(i2*cc),n)
Next i

Sub funct(x1,y1,x2,y2,n)
Local k,d,xa_,ya,xb,yb,xc,yc

If n<=0 Then
mu=70
Line 160+x1*mu,160+y1*mu,160+x2*mu,160+y2*mu
Else
xa_=x1+(x2-x1)*2/5
ya=y1+(y2-y1)*2/5
xb=x1+(x2-x1)*3/5
yb=y1+(y2-y1)*3/5
k=Atan2(y2-y1,x2-x1)
d=Sqr((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))/2.5
xc=xa_+d*Cos(k+Pi*75/180)
yc=ya+d*Sin(k+Pi*75/180)

funct(x1,y1,xa_,ya,n-1)
funct(xa_,ya,xc,yc,n-1)
funct(xc,yc,xb,yb,n-1)
funct(xb,yb,x2,y2,n-1)
EndIf
End Sub

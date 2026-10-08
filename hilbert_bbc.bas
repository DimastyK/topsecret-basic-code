'Hilbert, BBC Microbot
CLS
Dim integer x0=160-160*Sqr(1/2)
Dim integer y0=160-160*Sqr(1/2)
h(-1,-1,2,0,0,2,6)

Sub h(a,b,c,d,e,f,n)

If n<=0 Then
l(a+(c+d)/2,b+(e+f)/2)
GoTo l100
EndIf
h(a,b,d/2,f/2,c/2,e/2,n-1)
h(a+c/2,b+e/2,c/2,e/2,d/2,f/2,n-1)
h(a+c/2+d/2,b+e/2+f/2,c/2,e/2,d/2,f/2,n-1)
h(a+c/2+d,b+e/2+f,-d/2,-f/2,-c/2,-e/2,n-1)
l100:
End Sub
Sub l(x,y)
xx=160*x*Sqr(1-y*y/2)+160
yy=160*y*Sqr(1-x*x/2)+160
Line x0,y0,xx,yy
x0=xx
y0=yy
End Sub

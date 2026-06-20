'Batman formula adapted from Apple ][ BASIC
CLS
b=0
v=80
w=80
For a=0 To 159
h=159+b
Line h,v,h,w
h=159-b
Line h,v,h,w
x=a/20
b=a
If x<1 Then
v=80-20*fne(x)
w=80-20*fnl(x)
GoTo nxt
EndIf
If x<3 Then
v=80-20*fnh(x)
w=80-20*fnl(x)
GoTo nxt
EndIf
If x<4 Then
v=80-fnw(x)
w=80-20*fnl(x)
GoTo nxt
EndIf
y=fnw(x)
v=80-y
w=80+y
nxt:
Next a

Function fnw(x) As float
fnw=50*Sqr(1.8-(x/6)^2)
End Function
Function fnl(x) As float
fnl=0.5*x-0.09*x*x-3+Sqr(2*Abs(x-2)-(x-2)^2)
End Function
Function fnh(x) As float
fnh=4.31-0.5*x-1.355*Sqr(4-(x-1)^2)
End Function
Function fne(x) As float
fne=9+1.5*(Abs(x-0.5)+x+0.5)-5.5*(Abs(x-0.75)+x+0.75)
End Function

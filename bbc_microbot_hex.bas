'BBC Mcrobot
CLS
r=35
d=2*r
s=r*Sqr(3)
k=320^2

For v=0 To 15
For h=-14 To 14
For l=-Pi To Pi Step Pi/3
a=r+(v And 1)*r+h*d+r*Sin(l)
b=159+v*s+r*Cos(l)
c=k/(a*a+b*b)
If l=-Pi Then
x0=a*c
y0=b*c
Else
bline(Int(x0+159),Int(y0-32),Int(a*c+159),Int(b*c-32))
x0=a*c
y0=b*c
End If
Next l
Next h
Next v

Sub bline(x0%,y0%,x1%,y1%)
dx=Abs(x1%-x0%)
If x0%<x1% Then
sx=1
Else
sx=-1
EndIf

dy=-Abs(y1%-y0%)
If y0%<y1% Then
sy=1
Else
sy=-1
EndIf

err=dx+dy

Do
If (x0%>=0)And(x0%<320)And(y0%>=0)And(y0%<320) Then
 Pixel x0%,y0%
EndIf
If (x0%=x1%) And (y0%=y1%) Then
Exit Sub
End If

e2=2*err
If e2>=dy Then
err=err+dy
x0%=x0%+sx
EndIf

If e2<=dx Then
err=err+dx
y0%=y0%+sy
EndIf
Loop

End Sub

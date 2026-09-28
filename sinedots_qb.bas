'sinedots, my QB program
Option default integer
CLS
Dim s(256),co(256)
For i=0 To 255
s(i)=Int(80*Sin(i*Pi/128))
If i And 128 Then
cc=i Xor 255
Else
cc=i
EndIf
co(i)=cc<<9
Next i
de=8
Dim integer a0=0
Dim integer b0=0
Dim integer c0=0
Dim integer d0=0
Dim integer a01=256-de
Dim integer b01=de*2
Dim integer c01=de*3
Dim integer d01=256-de


Do
drwdots(a0,b0,c0,d0,1)
drwdots(a01,b01,c01,d01,0)

d0=(d0+1) And 255
d01=(d01+1) And 255

c0=(c0-3) And 255
c01=(c01-3) And 255

a0=(a0+1) And 255
a01=(a01+1) And 255

b0=(b0-2) And 255
b01=(b01-2) And 255

Loop Until Inkey$=Chr$(27)

Sub drwdots(aa,bb,cc,dd,col)
For i=0 To 255
xx=s(aa)+s(bb)+160
yy=s(cc)+s(dd)+160
Pixel xx,yy,col*co(i)

aa=(aa-7) And 255
bb=(bb+3) And 255
cc=(cc+1) And 255
dd=(dd+5) And 255

Next i

End Sub

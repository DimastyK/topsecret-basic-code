'Vanitas malware
CLS
Dim st(256),ct(256),p_x(256),p_y(256)

r0=150
For i=0 To 255
st(i)=Int(r0*Sin(i*Pi/128))
ct(i)=Int(r0*Cos(i*Pi/128))
p_x(i)=0
p_y(i)=0
Next i

a0=0
b0=0
di=&hD9
db=1
da=1

Do
si=&Hdc
di=(di+1) And 65535
si=(si-di) And 65535

If di=&Hdc Then di=0

If di=0 Then
db=(db+1) And 255
si=(si+1) And 65535
di=(di+2) And 65535
EndIf

a0=(a0+2) And 255
b0=(b0+2) And 255

a=a0
b=b0
For i=0 To 255
px=160+(si*ct(a)+di*ct(b))/256
py=160+(si*st(a)+di*st(b))/256

a=(a+da) And 255
b=(b+db) And 255

'Pixel px,py
Pixel p_x(i),p_y(i),0
Pixel px,py

p_x(i)=px
p_y(i)=py
Next i

Loop Until Inkey$=Chr$(27)

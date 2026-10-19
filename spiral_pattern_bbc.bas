'BBC Microbot, by rheolism
CLS
Dim float si(36),co(36)
Dim integer a,o,i
f=Rad(10)
For a=0 To 35
si(a)=Sin(f*a)
co(a)=Cos(f*a)
Next a
Randomize &H1234567
o=0
For i=0 To 285
r=Exp(i*0.007)*32
s=Exp((i-36)*0.007)*32
a=i Mod 36

Color RGB(100+(i Mod 155),50+a*5,255-(i Mod 200))
If Rnd()<0.5 Then
x1=160+s*si(o)
y1=160-s*co(o)
x2=160+r*si(a)
y2=160-r*co(a)
Else
x1=160+r*si(o)
y1=160-r*co(o)
x2=160+s*si(a)
y2=160-s*co(a)
EndIf
Line x1,y1,x2,y2
o=a

Next i

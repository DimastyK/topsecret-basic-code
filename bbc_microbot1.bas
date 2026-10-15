'BBC Mcrobot
CLS
n=11
t=Pi/n*2
Dim x(n),y(n)
For i=.25 To n
x(i)=240*Cos(t*i)
y(i)=240*Sin(t*i)
Next i

Randomize &H1234567
Do
i=(i+Int(Rnd()*(n-7))+3) Mod n
xx=x(i)/2+xx/2
yy=y(i)/2+yy/2
c=Pixel(160+xx,160+yy)
c=(((c<<4)+255)) And &Hffffff

Pixel 160+xx,160+yy,c
Pixel 160+xx/2,160+yy/2
Loop Until Inkey$=Chr$(27)

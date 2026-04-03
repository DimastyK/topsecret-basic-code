CLS
FRAMEBUFFER LAYER
FRAMEBUFFER WRITE L
Dim integer t(256)
For i=0 To 255
t(i)=Int(64+63*Sin(i*Pi/128))
Next i
Dim a0 As integer
Dim b0 As integer
Dim a As integer
Dim b As integer
For i=0 To 319
y1=Int(80+80*Sin(Pi*i/160))
y2=Int(80+40*Sin(Pi*i/160*1.7))
Line i,y1,i,y2,,&Hffffff)
Next i

FRAMEBUFFER WRITE N
CLS

Do
a=a0
b=b0
For y=0 To 319

h=t(a)+t(b)
Blit FRAMEBUFFER L,N,0,h,0,y,320,1
'FRAMEBUFFER copy f,n 'copy to screen

a=(a+3) And 255
b=(b+2) And 255
Next y
a0=(a0+3) And 255
b0=(b0+5) And 255
Loop Until Inkey$=Chr$(27)
'chaos game
CLS
Dim x(4),y(4)
For i=0 To 4
x(i)=160*Cos((54+i*72)*Pi/180)
y(i)=160*Sin((54+i*72)*Pi/180)

Next i
xx=160
yy=160
Randomize &H123456
Do
i=Int(Rnd()*5)
xx=(xx+x(i))/2.5
yy=(yy+y(i))/2.5
Pixel xx+160,yy+160,&Hff0000
Loop Until Inkey$=Chr$(27)

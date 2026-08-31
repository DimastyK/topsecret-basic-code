'Eric Schraf Brot
CLS
w=320
h=320
zo=3/w
dmin=0.06
For a=0 To w-1
For b=0 To 1.5*h
'Pixel a,b,255
x=(a-w)*zo
y=(b-h)*zo
d=100
i=0
Do
u=x*x
v=y*y

If (u+v>4.8) Or (i>30) Or (d<dmin) Then Exit Do
t=u-v
y=2*x*y+0.156
x=t-0.8
i=i+1
n=Abs(u+v-1)
If n<d Then d=n
Loop

If d<dmin Then
co=255-Int(4000*d)
If co<0 Then co=0
If co>255 Then co=255
x1=a-w/2
y1=b-h/2
x2=w+w/2-1-a
y2=h+h/2-b
Color RGB(co,co,0)
Pixel x1,y1
Pixel x2,y2
EndIf

Next b
Next a

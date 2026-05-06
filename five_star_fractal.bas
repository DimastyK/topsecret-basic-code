'5 star fractal
Color &Hffffff,0
CLS
x!=1
y!=1
Dim a(25) As float
Dim b(25) As float
m=5' 3,4,5

For i=0 To m
a(2*i)=Cos(2*Pi*(i+1)/m)
b(2*i)=Sin(2*Pi*(i+1)/m)
a(2*i+1)=0.5*(Cos(2*Pi*(i+1)/m)+Cos(2*Pi*i/m))
b(2*i+1)=0.5*(Sin(2*Pi*(i+1)/m)+Sin(2*Pi*i/m))
Next i

Randomize timer'&H1234678
Do
c=Int(2*m*Rnd())
x1!=(x!/(x!*x!+y!*y!))/3+a(c)
y1!=(-y!/(x!*x!+y!*y!))/3+b(c)

x!=x1!/(x1!*x1!+y1!*y1!)
y!=y1!/(x1!*x1!+y1!*y1!)

Pixel Int(x!*45+160),Int(y!*45+160)
Loop Until Inkey$=Chr$(27)

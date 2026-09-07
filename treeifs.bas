'IFS tree fractal
CLS
Dim a(5),b(5),c(5),d(5),e(5),f(5)
For i=0 To 4
 Read a(i),b(i),c(i),d(i),e(i),f(i)
Next i

Dim co(5)
co(0)=RGB(0,192,0)
co(1)=RGB(0,127,0)
co(2)=RGB(155,94,64)
co(3)=RGB(155,94,64)
co(4)=RGB(0,240,0)

x=0
y=0
Randomize &H1234567
Do
i=Int(5*Rnd())

xx=a(i)*x+b(i)*y+e(i)
yy=c(i)*x+d(i)*y+f(i)
x=xx
y=yy
Color co(i)
Pixel 320*x,260-260*y
Loop Until Inkey$=Chr$(27)

Data 0.195,-0.4880,0.3440,0.4430,0.4431,0.2452
Data 0.462,0.4140,-0.2520,0.3610,0.2511,0.5692
Data -0.058,-0.07,0.4530,-0.1111,0.5976,0.0969
Data -0.035,0.07,-0.469,0.022,0.4884,0.5069
Data -0.637,0,0,0.501,0.8562,0.2513

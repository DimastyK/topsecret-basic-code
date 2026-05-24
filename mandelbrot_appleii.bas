'Mandelbrot Apple ii style
CLS
Dim hc(8)
hc(0)=0
hc(1)=RGB(0,255,0)
hc(2)=RGB(255,0,255)
hc(3)=RGB(255,255,255)
hc(4)=RGB(0,0,0)
hc(5)=RGB(253,107,56)
hc(6)=RGB(24,205,252)
hc(7)=RGB(255,255,255)

For x=0 To 319
For y=0 To 160
a=0
b=0
c=(x-160)/90-0.5
d=(y-160)/160
For i=0 To 7
q=a*a-b*b+c
b=2*a*b+d
a=q
co=i+(i>3)-4*(i=7)
Pixel x,y,hc(co)
Pixel x,319-y,hc(co)
i=i+(a*a+b*b>4)*7
Next i
Next y
Next x

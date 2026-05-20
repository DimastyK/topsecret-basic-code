'Minskytron
CLS
Option default integer
x=0
y=15

For l=0 To 400000
x=(x+(y>>1)) And 255
y=(y-(x>>1)) And 255

'x=(x+(y>>1) And 255)

v=Pixel(x+32,y+32)
v=v+RGB(l And 255,l And 127,l And 63)
Pixel x+32,y+32,v And &Hffffff
Next l

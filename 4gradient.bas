Option default integer
'4 gradient
CLS
'colors
r1=255
g1=0
b1=0

r2=0
g2=255
b2=0

r3=0
g3=0
b3=255

r4=255
g4=255
b4=255

For y=0 To 319
r01=Int(r1+y*(r3-r1)/320) And 255
g01=Int(g1+y*(g3-g1)/320) And 255
b01=Int(b1+y*(b3-b1)/320) And 255

r02=Int(r2+y*(r4-r2)/320) And 255
g02=Int(g2+y*(g4-g2)/320) And 255
b02=Int(b2+y*(b4-b2)/320) And 255

For x=0 To 319

r=Int(r01+(x*(r02-r01)/320)) And 255
g=Int(g01+(x*(g02-g01)/320)) And 255
b=Int(b01+(x*(b02-b01)/320)) And 255
Pixel x,y,RGB(r,g,b)
Next x
Next y

'polar buterfly
Color &Hffffff,0
CLS
For i=0 To 2*Pi Step 0.005
t!=i-Pi/4
r!=1+2*Cos(4*t!)^3-Sin(2*t!)
x=Int(160+60*r*Cos(i))
y=Int(160+60*r*Sin(i))
Pixel x,y
Next i

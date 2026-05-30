'Polar graph
CLS

For t=0 To Pi Step 1e-4
r=Cos(t)+Cos(-t)+Sin(25*t)
x=80+80*r*Cos(t)
y=160+80*r*Sin(t)
Pixel x,y
Next t

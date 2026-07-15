'hexagon wih rounded corners
CLS

For i=0 To 2*Pi Step 0.01

r=30*(5+Cos(6*i)/5)

x=r*Cos(i)
y=r*Sin(i)

Pixel 160+x,160+y
Next i

'yet anoher minsky
CLS
Randomize &H1234567
Do
x=Int(320*Rnd())-160
y=Int(320*Rnd())-160
r=Int(Rnd()*150)+10
c=Int(Rnd()*&Hfffff)And &Hffffff
minsky(x,y,r,c)
Loop Until Inkey$=Chr$(27)

Sub minsky(x,y,r,c)
For a=0 To 2*Pi Step 0.01
mx=x+r*Cos(a)
my=y+r*Sin(a)
Pixel mx+160,my+160,c
Pixel my+160,mx+160,c
Pixel 160-mx,my+160,c
Pixel 160-my,mx+160,c
Pixel 160+mx,160-my,c
Pixel 160-my,160-mx,c
Pixel 160-mx,160-my,c
Pixel 160-my,160-mx,c
Next a
End Sub

'restricted chaosgame
Dim co(7) As integer
co(0)=RGB(0,0,0)
co(1)=RGB(0,0,255)
co(2)=RGB(0,255,0)
co(3)=RGB(0,255,255)
co(4)=RGB(255,0,0)
co(5)=RGB(255,0,255)
co(6)=RGB(255,255,0)


Randomize Timer'&H123456
x=160*Rnd()
y=160*Rnd()
last=6
CLS
For i=0 To 20000
Do
v=Int(4*Rnd())
Loop Until v<>last
x=x/2
y=y/2
If (v=0) Or (v=1) Then x=x+80
If (v=2) Or (v=1) Then y=y+80
Color co(6-last)
Pixel x+80,y+80
last=v-1
If last=-1 Then last=3
Next i

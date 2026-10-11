'maze, BBC Microbot
' picture differ from original code
Color &Hffffff,0
CLS
Dim integer dx(4),dy(4)
st=4
dx(0)=0
dx(1)=st
dx(2)=0
dx(3)=-st

dy(0)=st
dy(1)=0
dy(2)=-st
dy(3)=0

c!=0
lines=0

For s=0 To 320 Step st
For r=0 To 320 Step st
x=r
y=s
found=0
v=0
w=0
For d%=Int(c!-3) To Int(c!)
b%=((d%*4) And 12)/4
v=x+dx(b%)
w=y+dy(b%)
If pt(v,w)=0 Then
found=1
GoTo ex1
EndIf
Next d%
ex1:
If found=0 Then GoTo cont
'draw spiral

Do While lines<20000
found=0
For d%=Int(c!-3) To Int(c!)
b%=((d%*4) And 12)/4
v=x+dx(b%)
w=y+dy(b%)
If pt(v,w)=0 Then
found=1
GoTo ex2
EndIf
Next d%
ex2:
If found=0 Then GoTo cont
Line x,y,v,w
x=v
y=w
lines=lines+1
c!=c!+0.125
Loop
cont:
Next r
Next s

Function pt(x,y) As integer
If (x<0) Or (x>=319) Or (y<0) Or (y>=319) Then
pp=-1
Else
pp=Pixel(x,y)
EndIf
pt=pp
End Function

Function bromd(dd%) As integer
bromd=((dd%*4) And 12)
End Function

'100! big number
CLS
Option default integer
Dim string s
Dim a(200)
For i=0 To 199
a(i)=0
Next i
a(0)=1
c=0

For n=100 To 2 Step -1
t=0
For i=0 To c
t=t+a(i)*n
a(i)=t Mod 10
t=Int(t/10)
Next i
Do While t>0
c=c+1
a(c)=t Mod 10
t=Int(t/10)
Loop
Next n

s=""
For i=c To 0 Step -1
s=s+Str$(a(i))
Next i
Print s

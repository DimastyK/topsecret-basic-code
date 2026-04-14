'100! big number
CLS
Option default integer
Dim string s
Dim a(200)
For i=0 To 199
a(i)=0
Next i
a(0)=1
count=0

For n=100 To 2 Step -1
t=0
For i=0 To count
t=a(i)*n+t
a(i)=t Mod 10
t=t/10
Next i
Do While t>0
count=count+1
a(count)=t Mod 10
t=t/10
Loop
Next n

s=""
For i=count To 0 Step -1
s=s+Str$(a(i))
Next i
Print s

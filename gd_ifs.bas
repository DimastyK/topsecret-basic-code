'Golden Dragon IFS
CLS
Randomize Timer
x!=0
y!=0
For i=0 To 100000
rr=Int(2*Rnd())
If rr=1 Then
a!=0.62367
b!=-0.40337
c!=0.40337
d!=0.62367
e!=0
f!=0
Else
a!=-0.37633
b!=-0.40337
c!=0.40337
d!=-0.37633
e!=0.5
f!=0
EndIf

xx!=a!*x!+b!*y!+e!
yy!=c!*x!+d!*y!+f!
sc=400
Pixel 80+xx!*sc,160-yy!*sc
x!=xx!
y!=yy!
Next i

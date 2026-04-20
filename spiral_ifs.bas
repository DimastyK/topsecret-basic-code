'Spiral IFS
CLS
Randomize &H12345678
x!=0
y!=0

For i=0 To 20000
r=Int(100*Rnd())
If r<=90 Then
a!=0.787879
b!=-0.424242
c!=0.242424
d!=0.859848
e!=1.758647
f!=1.408065
Else If r<=95 Then
a!=-0.121212
b!=0.257576
c!=0.151515
d!=0.053030
e!=-6.721654
f!=1.377236
Else
a!=0.181818
b!=-0.136364
c!=0.090909
d!=0.181818
e!=6.086107
f!=1.568035
EndIf

xn!=a!*x!+b!*y!+e!
yn!=c!*x!+d!*y!+f!
sc=20
Pixel xn!*sc+160,yn!*sc+80
x!=xn!
y!=yn!
Next i

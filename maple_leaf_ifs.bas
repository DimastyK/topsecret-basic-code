'Maple Leaf IFS
CLS
Randomize timer'&H123456
x!=0
y!=0
Do
r=Int(4*Rnd())
Select Case r
Case 0
xx!=0.14*x!+0.01*y!+0.08
yy!=0*x!+0.51*y!-1.31
co=RGB(255,255,0)
Case 1
xx!=0.43*x!+0.52*y!+1.49
yy!=-0.45*x!+0.50*y!-0.75
co=RGB(255,0,0)
Case 2
xx!=0.45*x!-0.49*y!-1.62
yy!=0.47*x!+0.47*y!-0.74
co=RGB(192,0,0)
Case 3
xx!=0.49*x!+0*y!+0.02
yy!=0*x!+0.51*y!+1.62
co=RGB(192,192,0)
End Select
m=40
Pixel 160+m*xx!,160-m*yy!,co
x!=xx!
y!=yy!
Loop Until Inkey$=Chr$(27)

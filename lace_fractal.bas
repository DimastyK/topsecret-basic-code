'lace fractal
CLS
x!=0.1
y!=0.1
Randomize timer'&H12345678
Do
a!=Rnd()
r0!=Sqr(x!*x!+y!*y!)
w!=Atan2(y!,x!-1)
If a!<=1/4 Then
w!=Atan2(y!,x!-1)
y1!=-r0!*Cos(w!)/2+1
x1!=-r0!*Sin(w!)/2
ElseIf a!<=2/4 Then
w!=Atan2(y!-Sqr(3)/2,x!+1/2)
y1!=-r0!*Cos(w!)/2-1/2
x1!=-r0!*Sin(w!)/2+Sqr(3)/2
ElseIf a!<=3/4 Then
w!=Atan2(y!+Sqr(3)/2,x!+1/2)
y1!=-r0!*Cos(w!)/2-1/2
x1!=-r0!*Sin(w!)/2-Sqr(3)/2
Else
w!=Atan2(y!,x!)
y1!=-r0!*Cos(w!)/2
x1!=-r0!*Sin(w!)/2
EndIf
x!=x1!
y!=y1!
Pixel Int(160+x!*80),Int(160+y!*80),&Hffffff

Loop Until Inkey$=Chr$(27)

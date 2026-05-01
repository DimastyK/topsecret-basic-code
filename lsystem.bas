'Lindenmayer fractals
'Due to the 255-byte string length limit, this program writes data to files 1.txt, 2.txt...5.txt

CLS
ax$="F+F+F+F"'axiom
ru$="FF+F++F+F"'rule

Open "A:\1.txt" For output As #1
Print #1,ax$
Close #1

For i=1 To 4'iterations
Open "A:\"+Str$(i)+".txt" For input As #1
Open "A:\"+Str$(i+1)+".txt" For output As #2

Do
r$=Input$(1,#1)

If r$="F" Then
Print #2,ru$;
Else
Print #2,r$;
EndIf
Loop Until Eof(#1)
Close #1
Close #2
Kill "A:\"+Str$(i)+".txt"
Next i

'draw
an!=0
ra!=3.94
tx!=0
ty!=0
sp%=0
da!=90
Dim s(15000) As float

Open "A:\5.txt" For input As #1
Do
r$=Input$(1,#1)
If r$="F" Then
ttx!=tx!+ra!*Cos(an!*Pi/180)
tty!=ty!+ra!*Sin(an!*Pi/180)
Line tx,ty,ttx,tty
tx=ttx
ty=tty
EndIf

If r$="-" Then
an!=an!-da!
EndIf

If r$="+" Then
an!=an!+da!
EndIf

If r$="[" Then
s(sp%)=an!
s(sp%+1)=tx!
s(sp%+2)=ty!
sp%=sp%+3
EndIf

If r$="]" Then
sp%=sp%+3
an!=s(sp%)
tx!=s(sp%+1)
ty!=s(sp%+2)
EndIf
Loop Until Eof(#1)
Close #1

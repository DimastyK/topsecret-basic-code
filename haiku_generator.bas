'pseudo haiku, space to repeat, Esc-exit
CLS
Randomize timer'&H1234567
Dim w1(5) As string
Dim w2(5) As string
Dim w3(6) As string
Dim w4(5) As string
Dim w5(8) As string
Dim w6(5) As string
Dim w7(4) As string

Restore wordlist
For i=0 To 4
Read w1(i)
Next i

For i=0 To 4
Read w2(i)
Next i

For i=0 To 5
Read w3(i)
Next i

For i=0 To 4
Read w4(i)
Next i

For i=0 To 7
Read w5(i)
Next i

For i=0 To 4
Read w6(i)
Next i

For i=0 To 3
Read w7(i)
Next i

Do
r1=Int(5*Rnd())
r2=Int(5*Rnd())
r3=Int(6*Rnd())
r4=Int(5*Rnd())
r5=Int(8*Rnd())
r6=Int(5*Rnd())
r7=Int(4*Rnd())

Print w1(r1);" ";w2(r2)
Print w3(r3);" ";w4(r4);" ";w5(r5)
Print w6(r6);" ";w7(r7)
Print
k$=""
Do While k$=""
k$=Inkey$
Loop
Loop Until k$=Chr$(27)

wordlist:
Data "Enchanting","Amazing"
Data "Colourful","Delightful"
Data "Delicate"

Data "vision","distance"
Data "conscience"
Data "process","chaos"

Data "superstitous","continous"
Data "graceful","inviting"
Data "contradicting"
Data "overwhelming"

Data "true","dark","cold"
Data "warm","great"

Data "scenery","season"
Data "colours","lights"
Data "Spring","Winter"
Data "Summer","Auumn"

Data "undeniable","beautiful"
Data "irreplaceable"
Data "unbelievable"
Data "irrevocable"

Data "nspiration"
Data "imagination","wisdom"
Data "thoughts"
'
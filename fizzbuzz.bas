'Fizz Buzz
CLS
Option default integer
For i=1 To 20
o$=""
If i Mod 3=0 Then o$=o$+"Fizz"
If i Mod 5=0 Then o$=o$+"Buzz"
If o$="" Then o$=Str$(i)
Print o$
Next i

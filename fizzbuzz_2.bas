'fizzbuzz obfuckate
CLS
Dim w(3) As string=("","fizz","buzz","fizzbuzz")
For n=1 To 20
w(0)=Str$(n)
i=((n Mod 3)=0)+2*((n Mod 5)=0)
Print w(i)
Next n

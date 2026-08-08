'Sierpinski arrowhead
CLS
Dim px,py,x,y
x=159
y=0
px=x
py=y
Dim heading!=-Pi/6
ah(6,300,Pi/3)
End

Sub ah(n,l,turn!)
If n=0 Then
x=x+l*Sin(heading!)
y=y+l*Cos(heading!)
Line px,py,x,y
px=x
py=y
Else
ah(n-1,l/2,-turn!)
heading!=heading!-turn!
ah(n-1,l/2,turn!)
heading!=heading!-turn!
ah(n-1,l/2,-turn!)
EndIf
End Sub

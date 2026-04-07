'Sierpinsky curve
CLS

Dim x As integer
Dim y As integer

Const a=3
Const b=a
x=2
y=2

n=5
aa(n)
lrel(a,b)
bb(n)
lrel(-a,b)
cc(n)
lrel(-a,-b)
dd(n)

Sub lrel dx,dy
Line x,y,x+dx,y+dy,1,&Hffffff
x=x+dx
y=y+dy
End Sub

Sub aa k
 If k>0 Then
 aa(k-1)
 lrel(a,b)
 bb(k-1)
 lrel(a,0)
 dd(k-1)
 lrel(a,-b)
 aa(k-1)
 EndIf
End Sub

Sub bb(k)
If k>0 Then
bb(k-1)
lrel(-a,b)
cc(k-1)
lrel(0,b)
aa(k-1)
lrel(a,b)
bb(k-1)
EndIf
End Sub

Sub cc(k)
If k>0 Then
cc(k-1)
lrel(-a,-b)
dd(k-1)
lrel(-a,0)
bb(k-1)
lrel(-a,b)
cc(k-1)
EndIf
End Sub

Sub dd(k)
If k>0 Then
dd(k-1)
lrel(a,-b)
aa(k-1)
lrel(0,-b)
cc(k-1)
lrel(-a,-b)
dd(k-1)
EndIf
End Sub

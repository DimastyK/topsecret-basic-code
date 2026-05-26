'optical llusion
CLS
For x=0 To 9
For y=0 To 9
If ((x Xor y) And 1) Then
co=255
Else
co=65535
EndIf
Box x*32,y*32,32,32,1,co,co
Next y
Next x

For i=0 To 10
For j=0 To 10
a=i+j
co=0
Select Case a
Case 1,3,5,6,8,10,11,13,14,16
co=&hffffff
End Select

For k=0 To 5
x=i*32
y=j*32-5
Line x-k,y+k,x+k,y+k,1,co
Line x-k,y-k+10,x+k,y+10-k,1,co

Next k

Next j
Next i

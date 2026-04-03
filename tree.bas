'tripple tree
Option angle radians
Const l=240
Const a=120
CLS
Color &Hffff
'For i=0 To 360
drw_ 160,160,l,1,0
'Next i

Sub drw_ x!,y!,r!,ang!,ro!
Local i,j,r2!,xp!,yp!,ang1!
steps%=Int(360/a)-1
For i=0 To steps%
If i*a<>ang! Then
ang1!=(a*i+ro!)*Pi/180
Line Int(x!),Int(y!),Int(x!+r!*Cos(ang1!)),Int(y!+r!*Sin(ang1!))
End If
Next i

For j=0 To steps%
r2!=r!/2
ang1!=(a*j+ro!)*Pi/180
xp!=x!+r2!*Cos(ang1!)
yp!=y!+r2!*Sin(ang1!)
 If r!>=1 Then
 drw_ xp!,yp!,r2!-10,j*a,ro!
 End If
Next j
End Sub

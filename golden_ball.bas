'Golden Ball 1 crop circle
'buggy qb64pe

CLS
Dim integer px=0,py=0,an=0,an1,an2
Dim float cc=Pi/180

For a1=100 To 489 Step 1
If (a1>=300) And(a1<=480) Then GoSub outer_edge
If (a1>=120) And (a1<=480) Then GoSub inner_edge:GoSub draw_center
Next a1
End

'replace DRAW
Sub ta(va)
an=va
End Sub

Sub bm(x,y)
px=x
py=y
End Sub

Sub bu(r)
r=r*1.6'scale
px=px+r*Cos(an*cc)
py=py+r*Sin(an*cc)
End Sub

outer_edge:
For a2=0 To 300 Step 60
bm(160,160)
ta(a2)
bu(50)
ta(a1+a2)
bu(50)
px1=px
py1=py
Pixel px1,py1
bm(160,160)
ta(a2)
bu(45)
ta(a1+a2)
bu(45)
px2=px
py2=py
Pixel px2, py2
If (a1 Mod 4)=0 Then
Line px1,py1,px2,py2
EndIf
Next a2
Return

inner_edge:
bm(160,160)
ta(a1)
bu(55)
px1=px
py1=py
Pixel px1,py1
bm(160,160)
ta(a1)
bu(45)
px2=px
py2=py
Pixel px2,py2
If (a1 Mod 4)=0 Then
Line px1,py1,px2,py2
EndIf
Return

draw_center:
bm(160,160)
ta(a1)
bu(20)
px1=px
py1=py
Pixel px1,py1
If (a1 Mod 10)=0 Then
Line px1,py1,160,160
EndIf

Return

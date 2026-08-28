'QB64PE
CLS
Dim ma(14,6)
For j=0 To 6
For i=0 To 14
Read ma(i,j)
Next i
Next j
twopi=Pi*2
xs=160
ys=160
maxrad=160
sli=10'total segments
lt=8'Layer thickness
For r=maxrad To (maxrad-(7*lt)) Step -1
If r<=0 Then Exit For
dfo=maxrad-r
j=Int(dfo/lt)
If j>6 Then j=6

minstep=1/r

For i=0 To twopi Step minstep
slw=twopi/sli
ais=fmod(i,slw)

col=Int((ais/slw)*15)
If col>14 Then col=14
If col<0 Then col=0

If ma(col,j)=1 Then
x=xs+r*Cos(i)
y=ys+r*Sin(i)
Pixel x,y
EndIf
Next i
Next r

Function fmod(n,d)
fmod=n-d*Int(n/d)
End Function

'maze data
Data 0,1,1,1,1,1,1,0,1,1,1,1,1,1,0
Data 0,1,0,0,0,0,1,0,1,0,0,0,0,1,0
Data 0,1,0,1,1,0,1,0,1,0,1,1,0,1,0
Data 0,1,0,1,0,0,1,0,1,0,0,1,0,1,0
Data 0,1,0,1,1,1,1,0,1,1,1,1,0,1,0
Data 0,1,0,0,0,0,0,0,0,0,0,0,0,1,0
Data 0,1,1,1,1,1,1,1,1,1,1,1,1,1,0

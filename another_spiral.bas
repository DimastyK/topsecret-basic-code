'Spiral
CLS
d=Pi/180

For a=0 To 1400
Color RGB(a And 255,(a/16) And 255,255 Xor (a And 255))
w=(a/45)*Cos(a*5.5*d)
r=10+a/9
sa=Sin(a*d)
co=Cos(a*d)

x=160+(r+w)*co
y=160+(r+w)*sa
If (x>=0) And (x<320) And(y>=0) And (y<319) Then
Pixel x,y
End If

x=160+(r-w)*co
y=160+(r-w)*sa
If (x>=0) And (x<320) And(y>=0) And (y<319) Then
Pixel x,y
End If
Next a

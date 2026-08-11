'flowsnake aka Peano Gosper curve
CLS
Dim start_x=140
Dim start_y=0
Dim start_angle=0
Dim angle=60
Dim start_length=270
Dim float x,y,an
Dim iter=3
x=start_x
y=start_y
an=start_angle-(iter*Atn(Sqr(3)/5)*Pi/180)

curve(iter,"a",start_length)
Sub curve(ci,t$,ln)
Local l
If ci>0 Then
l=ln/Sqr(7)
If t$="a" Then
curve(ci-1,"a",l)
an=an+angle
curve(ci-1,"b",l)
an=an+angle*2
curve(ci-1,"b",l)
an=an-angle
curve(ci-1,"a",l)
an=an-2*angle
curve(ci-1,"a",l)
curve(ci-1,"a",l)
an=an-angle
curve(ci-1,"b",l)
an=an+angle
Else
an=an-angle
curve(ci-1,"a",l)
an=an+angle
curve(ci-1,"b",l)
curve(ci-1,"b",l)
an=an+2*angle
curve(ci-1,"b",l)
an=an+angle
curve(ci-1,"a",l)
an=an-2*angle
curve(ci-1,"a",l)
an=an-angle
curve(ci-1,"b",l)
EndIf
Else
x1=x+ln*Cos(an*Pi/180)
y1=y+ln*Sin(an*Pi/180)
Line x,y,x1,y1
x=x1
y=y1
EndIf
End Sub

'fractal in focus,May 1985
'80 Microcomputing magazine
CLS
cf=Pi/180
mx=320
my=320
s=10'number of sides 3..21
'beginning of x and y
cx=mx*0.6
cy=my*0.8
x2=cx
y2=my+1-cy
inve=1'inverse mage
le=1' number of levels
'interesting values
's=4:inve=1:le=3
's=3:inve=1:le=4
's=10:inve=1:le=2
's=5:inve=0:le=4
's=5:inve=1:le=2
's=10:inve=0:le=3

a$=""
c$=""
a1$=""
b$=""
b1$=""

'angles to turn right and left
r=-360/s
l=r+180
aa=0
If inve=1 Then
c$="A"
w=r
r=-l
l=-w
Else
c$="R"
EndIf
a$=c$
If inve<>1 Then GoTo 140
a1$="R"
s1=s-2
For n=1 To s1
a1$=a1$+"L"
Next n
a1$=a1$+"R"
GoTo 160
140
a1$="L"
s1=s-2
For n=1 To s1
a1$=a1$+"R"
Next n
a1$=a1$+"L"
160
If le=1 Then GoTo 230
b$=""
'expand string for multiple levels
For n=2 To le
ln=Len(a$)
For n1=1 To ln
b$=b$+Mid$(a$,n1,1)
b$=b$+a1$
Next n1
a$=b$
b$=""
Next n
230 : 'scale size of diaram
ll=mx*2.5/(s*3^le)
For z=1 To s
For n=1 To Len(a$)
b1$=Mid$(a$,n,1)
b1$=b1$+a1$
For n1=1 To Len(b1$)
b$=Mid$(b1$,n1,1)
If b$="A" Then
aa=aa+w
GoTo 330
EndIf
If b$="L" Then
aa=aa+l
Else
aa=aa+r
EndIf
330
a_1=aa*cf
x=x+ll*Cos(a_1)
y=y+ll*Sin(a_1)*0.95
xp=Int(x)
yp=Int(y)
x1=xp+cx
y1=320-(yp/2+cy)
Line x2,y2,x1,y1
x2=x1
y2=y1
Next n1
Next n
Next z

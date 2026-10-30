'Serendipitous Circles,BYTE mag 1978
CLS

x=7
y=5
c=0
Do
k$=Inkey$
x=(x-y/2) And 511
y=(y+x/2) And 511
c=(c+1) And 15
Pixel f(x),f(y),co(c)
If k$=Chr$(32) Then
CLS
t=x
x=y
y=t
EndIf
Loop Until k$=Chr$(27)
'Save image"sc.bmp"
Function f(v)
If v And 256 Then
ff=160-((v And 255)*160/255)
Else
ff=160+((v And 255)*160/255)
EndIf
f=ff
End Function
Function co(v)
If v And 8 Then w=255 Else w=192
r=w*((v And 4)/4)
g=w*((v And 2)/2)
b=w*(v And 1)
co=RGB(r,g,b)
End Function

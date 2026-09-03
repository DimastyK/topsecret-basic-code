'Mandelbrot spiral, looooooooong precalc
Dim col(16)
For i=0 To 15
Read r,g,b
col(i)=RGB(r*4,g*4,b*4)
Next i
Data  0, 0, 0,63,63,63
Data 63,39,31,63,47,31
Data 63,55,31,63,63,31
Data 47,63,31,31,63,31
Data 31,55,47,47,47,63
Data 47,39,63,47,31,63
Data 55,31,63,59,31,63
Data 59,31,52,63,31,42
CLS
re=-0.77195
im=-0.116
incr=0.000005
For y=0 To 319
r=re
For x=0 To 319
co=mandel(r,im,256)
If co<>256 Then
co=1+(co Mod 15)
Else
co=0
EndIf
Pixel x,y,col(co)
r=r+incr
Next x
im=im+incr
Next y

Function mandel(ox,oy,li)
Local x,y
x=ox
y=oy
For c=li To 1 Step -1
xx=x*x
yy=y*y
If xx+yy>=4 Then Exit For
y=x*y*2+oy
x=xx-yy+ox
Next c
mandel=c
End Function
'

'Snowflake
Color &Hffffff,0
CLS

Const ste=Pi*0.2

drawstar(160,160,80)
'Save image "sf.bmp"

Sub drawstar x,y,size
Local i,j,newsize,xnew,ynew
If size<1 Then
Pixel x,y
Else
For i=0 To 9
newsize=size
For j=1 To 8
xnew=x+Int(newsize*Cos(i*ste))
ynew=y+Int(newsize*Sin(i*ste))
drawstar(xnew,ynew,Int(newsize/5))
newsize=Int(newsize*2/3)
Next j
Next i
EndIf
End Sub

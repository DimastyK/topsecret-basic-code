'Quad  Atari XL game - clear field
'controls: cursor, space, Esc-quit, Enter - continue game after win
Option default integer
Dim px,py As integer
Dim bf(10,10)
Randomize timer'&H123456
Dim iny(8)=(-1,-1,-1,0,1,1,1,0,0)
Dim inx(8)=(-1,0,1,1,1,0,-1,-1,0)

start_game:
px=1
py=1
countm=0'counter
CLS
For i=0 To 9
For j=0 To 9
bf(i,j)=0
Next j
Next i
'generate field
For i=0 To 14'44 for hardcore
xx=1+Int(7*Rnd())
yy=1+Int(7*Rnd())
invf(xx,yy)
Next i
'draw
For i=0 To 9
For j=0 To 9
If (px=j) And (py=i) Then
bc=&h00ff00
Else
bc=0
EndIf
If bf(j,i) Then
fc=&Hff0000
Else
fc=0
EndIf
Box j*32,i*32,31,31,1,bc,fc
Next j
Next i

'Save image "quad.bmp"
game_loop:
Do
k$=Inkey$
Loop Until k$<>""

If k$=Chr$(128) Then'up
If py>1 Then
py=py-1
drawp(px,py+1)
drawp(px,py)
EndIf

EndIf

If k$=Chr$(129) Then'down
If py<7 Then
py=py+1
drawp(px,py-1)
drawp(px,py)
EndIf

EndIf

If k$=Chr$(130) Then'left
If px>1 Then
px=px-1
drawp(px+1,py)
drawp(px,py)
EndIf

EndIf

If k$=Chr$(131) Then'right
If px<7 Then
px=px+1
drawp(px-1,py)
drawp(px,py)
EndIf

EndIf

If k$=Chr$(32) Then'inverse
invf px,py
countm=countm+1
'For dy=-1 To 1
'For dx=-1 To 1
For i=0 To 8
drawp(px+inx(i),py+iny(i))
Pause 100
Next i
'Next dx
'Next dy
'Check if done
couf=0
For y=0 To 9
For x=0 To 9
couf=couf Or bf(x,y)
Next x
Next y
If couf=0 Then
Font 1,2
Color &Hffffff
Print @(144,144) Str$(countm)

Do
Loop Until Inkey$=Chr$(13)
GoTo start_game
EndIf

EndIf

If k$<>Chr$(27) Then GoTo game_loop

Sub drawp x,y

If x>=0 And x<=9 And y>=0 And y<9 Then
If (px=x) And (py=y) Then
bc=&h00ff00
Else
bc=0
EndIf
If bf(x,y) Then
fc=&Hff0000
Else
fc=0
EndIf
Box x*32,y*32,31,31,1,bc,fc
EndIf
End Sub

Sub invf x,y
For dx=-1 To 1
For dy=-1 To 1
ix=x+dx
iy=y+dy
If ix>=0 And ix<=9 And iy>=0 And iy<=9 Then
bf(ix,iy)=bf(ix,iy) Xor 1
EndIf
Next dy
Next dx
End Sub

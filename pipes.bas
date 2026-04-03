'Pico Pipes!


Option default integer
Randomize &H123456
FRAMEBUFFER create
'game definitions
Dim p_x As integer 'player X coordinate
Dim p_y As integer 'player Y coordinate
Dim b(16,16)
Const CONN_UP = 1
Const CONN_RIGHT = 2
Const CONN_DOWN = 4
Const CONN_LEFT = 8
Dim cx(256)
Dim cy(256)

' Font type    : Full (16 characters)
' Font start   : CHR$(32)
' Font size    : 16x16 pixels
' Memory usage : 516 bytes
DefineFont #8
  10201010
  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
  C007E007 C007E007 C007E007 C007E007 8003C007 00000000 00000000 00000000
  00000000 00000000 FF030000 FF07FF07 5503FF07 0000AA00 00000000 00000000
  C007E007 C007E007 FF07E007 FF07FF07 5501FF03 0000AA00 00000000 00000000
  00000000 00000000 00000000 C0078003 C007E007 C007E007 C007E007 C007E007
  C007E007 C007E007 C007E007 C007E007 C007E007 C007E007 C007E007 C007E007
  00000000 00000000 FF010000 FF07FF03 D507FF07 C007EA07 C007E007 C007E007
  C007E007 C007E007 FF07E007 FF07FF07 D507FF07 C007EA07 C007E007 C007E007
  00000000 00000000 00FF0000 C0FF80FF 4055C0FF 000080AA 00000000 00000000
  C007E007 C007E007 C0FFE007 C0FFE0FF 4055A0FF 000080AA 00000000 00000000
  00000000 00000000 FFFF0000 FFFFFFFF 5555FFFF 0000AAAA 00000000 00000000
  C007E007 C007E007 FFFFE007 FFFFFFFF 5555FFFF 0000AAAA 00000000 00000000
  00000000 00000000 00FF0000 C0FF80FF C057E0FF C007E0AF C007E007 C007E007
  C007E007 C007E007 C0FFE007 C0FFE0FF C05FE0FF C007E0AF C007E007 C007E007
  00000000 00000000 FFFF0000 FFFFFFFF D55FFFFF C007EAAF C007E007 C007E007
  C007E007 C007E007 FFFFE007 FFFFFFFF D55FFFFF C007EAAF C007E007 C007E007
End DefineFont


start_game:
Font 1
 p_x=8
 p_y=8
 CLS
  build()
  rot()
  checkrot()
  drawb()
game_loop:
Do
k$=Inkey$
Loop Until k$<>""

If k$=Chr$(128) Then 'up
 If p_y<>0 Then
   p_y=p_y-1
   drawb()
 End If
End If

If k$=Chr$(129) Then'down
 If p_y<15 Then
   p_y=p_y+1
   drawb()
 End If
End If

If k$=Chr$(130) Then'left
 If p_x<>0 Then
   p_x=p_x-1
   drawb()
 End If
End If

If k$=Chr$(131) Then' right
 If p_x<>15 Then
   p_x=p_x+1
   drawb()
 End If
End If

If k$=Chr$(32) Then 'rotate
 p=b(p_x,p_y)<<1
 If (p And 16)<>0 Then
 p=(p Or 1) And 15
'p=p And 15
 EndIf
 b(p_x,p_y)=p
 checkrot()
 drawb()

If countr() Then
  Font 1,2
  Color &hffffff,0
  Print @(112,148) "Winner"
'  End
Do
Loop Until Inkey$=Chr$(13)
 GoTo start_game

 End If
End If

GoTo game_loop

Function countr() As integer
  cr=1
  For y=0 To 15
    For x=0 To 15
      If b(x,y) And 127 Then
      If (b(x,y) And 128)=0 Then
        cr=0
        Exit For
     End If
     End If
    Next x
  Next y
 countr=cr
End Function

Sub build()

  For y=0 To 15
    For x=0 To 15
      b(x,y)=0
    Next x
  Next y

  xp=Rnd()*15
  yp=Rnd()*15

  cx(0)=xp
  cy(0)=yp
  ca=1
build_lp:
    zu=Rnd()*(ca-1)
    xp=cx(zu)
    yp=cy(zu)
    direction=1<<(Int(Rnd()*255) And 3)
    reverseDirection=0
      If direction=CONN_UP Then
        xp2=xp
        yp2=yp-1
        If yp2<0 Then
        Else
          reverseDirection = CONN_DOWN
        End If
      End If
      If direction=CONN_DOWN Then
        xp2=xp
        yp2=yp+1
        If yp2>15 Then
        Else
          reverseDirection = CONN_UP
        End If
      End If
      If direction=CONN_LEFT Then
        xp2=xp-1
        yp2=yp
        If xp2<0 Then
        Else
          reverseDirection = CONN_RIGHT
        End If
      End If
      If direction=CONN_RIGHT Then
        xp2=xp+1
        yp2=yp
        If xp2>15 Then
        Else
          reverseDirection = CONN_LEFT
        End If
      End If

    If reverseDirection<>0 Then
If b(xp2,yp2)=0 Then
      cx(ca)=xp2
      cy(ca)=yp2
      ca=ca+1
      b(xp,yp)=b(xp,yp) Or direction
      b(xp2,yp2)=b(xp2,yp2) Or reverseDirection
    EndIf
    EndIf
    Print @(0,0) "generating data ";ca
  If ca<>255 Then GoTo build_lp
End Sub 'build

Sub rot()
  For y=0 To 15
    For x=0 To 15
      j=Rnd()*20+1
      For i=0 To j
        p=b(x,y)<<1
        If p And 16 Then
          p=(p Or 1) And 15
        End If
        b(x,y)=p
      Next i
    Next x
  Next y
End Sub 'rot

Sub pcell x,y
 psp=0' virtual pointer at stack
 c_x=x
 c_y=y
start_scan:
  b(c_x,c_y) = b(c_x,c_y) Or 128

  If (b(c_x,c_y) And CONN_LEFT)<>0 Then
    If c_x>0 Then
      If (b(c_x-1,c_y) And 128)=0 Then
If (b(c_x-1,c_y) And CONN_RIGHT)<>0 Then
  cx(psp)=c_x
  cy(psp)=c_y
  psp=psp+1
  c_x=c_x-1
  GoTo start_scan
      End If
      End If
    End If
  End If

  If (b(c_x,c_y) And CONN_RIGHT)<>0 Then
    If c_x<15 Then
      If (b(c_x+1,c_y) And 128)=0 Then
If (b(c_x+1,c_y) And CONN_LEFT)<>0 Then
  cx(psp)=c_x
  cy(psp)=c_y
  psp=psp+1
        c_x=c_x+1
  GoTo start_scan
      EndIf
    EndIf
    End If
  EndIf

  If (b(c_x,c_y) And CONN_UP)<>0 Then
    If c_y>0 Then
      If (b(c_x,c_y-1) And 128)=0 Then
If (b(c_x,c_y-1) And CONN_DOWN)<>0 Then
  cx(psp)=c_x
  cy(psp)=c_y
  psp=psp+1
        c_y=c_y-1
  GoTo start_scan
      End If
    End If
    End If
  End If

  If (b(c_x,c_y) And CONN_DOWN)<>0 Then
    If c_y<15 Then
      If (b(c_x,c_y+1) And 128)=0 Then
If (b(c_x,c_y+1) And CONN_UP)<>0 Then
  cx(psp)=c_x
  cy(psp)=c_y
  psp=psp+1
        c_y=c_y+1
  GoTo start_scan
      End If
    End If
  End If
  End If
 If psp=0 Then GoTo exit_scan
psp=psp-1
 c_x=cx(psp)
 c_y=cy(psp)
  GoTo start_scan
exit_scan:
End Sub 'pcell

Sub checkrot()
  'reset data
  For y=0 To 15
    For x=0 To 15
      b(x,y)=b(x,y) And 127
    Next x
  Next y
  pcell(8,8)
End Sub


Sub drawb()
 FRAMEBUFFER write f
 CLS
  Font 8,1
  For y=0 To 15
    For x=0 To 15
 If b(x,y) And 128 Then
 fc=&H00FF00
 Else
 fc=&HFF0000
 EndIf
 If x=p_x And y=p_y Then
 bc=255
 Else
 bc=0
 End If
 Color fc,bc
 Print @(32+x*16,32+y*16) Chr$(32+(b(x,y) And 127))
    Next x
  Next y
 FRAMEBUFFER copy f,n
 FRAMEBUFFER write n
End Sub 'draw_b

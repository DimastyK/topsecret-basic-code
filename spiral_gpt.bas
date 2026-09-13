'chatGPT spiral QB64PE
CLS
xmax=320
ymax=320
x=ymax/2-0.5*ymax/Pi
y=ymax/2-0.5*ymax/Pi
r=1

ai=5'increment
max_r=ymax
max_l=ymax/2
dir=1
'draw spiral
For i=1 To max_l
'colors
Select Case i Mod 3
Case 0: cl=RGB(0,255*i/320,128-(i*127/320))
Case 1: cl=RGB(0,100*i/320+55,100*/320+55)
Case 2: cl=RGB(0,255*i/320,128-i*127/320)
End Select
arc_(x,y,r,ai*i/180*Pi,ai*(i+30)/180*Pi,cl)
r=r+dir
If r>max_r Then
dir=-dir
r=max_r
EndIf
x=x+1/Pi
y=y+1/Pi
Next i

Sub arc_(x,y,r,rsta,rsto,co)
Local al,a

If rsto<rsta Then
arc_(x,y,r,rsta,Pi*2,co)
arc_(x,y,r,0,rsto,co)
Else
'al=Pi*r*r*(rsto-rsta)/Pi/2
al=r*r*(rsto-rsta)/2
For a=rsta To rsto Step 8/al
Pixel x+r*Cos(a),y+r*Sin(a),co
Next a
EndIf
End Sub

'ZX Spectrum screen viewer
'no flash support
Option default integer
Dim m(6912)

Open "esprit.scr" For input As #1
For i=0 To 6911
m(i)=Asc(Input$(1,#1))
Next i
Close #1

CLS
For y=0 To 191
disp=Int(y/64)*2048+256*(y And 7)+((y>>3) And 7)*32
For x=0 To 31
zxa=m(6144+x+32*Int(y/8))
If zxa And 64 Then
inkc=zxcol(8+(zxa And 7))
Else
inkc=zxcol(zxa And 7)
EndIf
papc=zxcol((zxa>>3) And 15)

a=m(disp+x)
b=128
For i=0 To 7
If b And a Then
Color inkc
Else
Color papc
EndIf
Pixel x*8+i,y
b=b>>1
Next i
Next x
Next y

Function zxcol(zxw) As integer
If zxw And 8 Then
w=255
Else
w=191
EndIf

If zxw And 1 Then
bb=w
Else
bb=0
EndIf

If zxw And 2 Then
rr=w
Else
rr=0
EndIf

If zxw And 4 Then
gg=w
Else
gg=0
EndIf

zxcol=RGB(rr,gg,bb)
End Function

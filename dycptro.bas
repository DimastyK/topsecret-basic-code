'DYCPtro
t$="                                   "
t$=t$+"Welcome to DYCP, 1st demo at picocalc"
 Dim s(257) As integer
 For i=0 To 255
 s(i)=70+70*Sin(i*Pi/128)
 Next i
tp%=1'text posiion
dt%=0
a0%=0
b0%=0
FRAMEBUFFER create

Do
FRAMEBUFFER write f
CLS
tt%=tp%
aa%=a0%
bb%=b0%
For i=0 To 39
y%=s(aa%)+s(bb%)
Print @(dt%+i*8,y%) Mid$(t$,tt%,1)

tt%=tt%+1
If tt%>Len(t$) Then tt%=1

aa%=(aa%+3) And 255
bb%=(bb%+2) And 255

Next i
a0%=(a0%+7) And 255
b0%=(b0%+5) And 255

FRAMEBUFFER wait
FRAMEBUFFER write n
FRAMEBUFFER copy f,n

dt%=dt%-1
If dt%=-8 Then
dt%=0
tp%=tp%+1
If tp%>Len(t$) Then
tp%=1
a0%=(a0%+3) And 255
b0%=(b0%+5) And 255
EndIf
EndIf

Loop Until Inkey$=Chr$(27)

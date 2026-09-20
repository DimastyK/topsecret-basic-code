'PDP-8 Kaleidoscope
CLS
es=3000' erase size
Dim xa(es)
Dim ya(es)
lim=es*100'limit
'perc=200'per_call
'values -2048..2047
Dim integer inix=158
Dim integer iniy=-1048
sh=1'shift

Dim integer x=inix
Dim integer y=iniy
index=0
count=0
Randomize &h1234567

Do
If count>=es Then
Pixel xa(index),ya(index),0
EndIf

x=x-(y>>sh)
If x And 2048 Then
x=x Or &Hfffff000
Else
x=x And &Hfff
EndIf

y=y+(x>>sh)
If y And 2048 Then
y=y Or &Hfffff000
Else
y=y And &Hfff
EndIf

sx=((x<<21>>23)+160)
sy=((y<<21>>23)+160)
sx=sx Mod 320
sy=sy Mod 320

Pixel sx,sy,RGB(255,255,255)
xa(index)=sx
ya(index)=sy
index=index+1
If index=es Then
index=0
'x=Int(1024*Rnd())
y=2048-Int(1024*Rnd())
sh=2-sh
EndIf

count=count+1
If count=lim Then count=0
Loop Until Inkey$=Chr$(27)

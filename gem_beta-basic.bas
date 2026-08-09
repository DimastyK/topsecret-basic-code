'gem, ZX Spectrum/BetaSoft,1985
CLS
Dim integer d=15
gem(159,159,40)
'Save image"gem.bmp"

Sub gem(x,y,s)
Line x,y-s,x-s,y
Line x-s,y,x,y+s
Line x,y+s,x+s,y
Line x+s,y,x,y-s

If s>4 Then
gem(x,y+s,s-d)
gem(x,y-s,s-d)
gem(x-s,y,s-d)
gem(x+s,y,s-d)
EndIf
End Sub

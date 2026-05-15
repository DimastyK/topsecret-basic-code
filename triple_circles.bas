'recursive circles
Color &Hffffff,0
CLS
tcir(160,160,150)
'Save image "tcir.bmp"
Sub tcir x%,y%,r%
Local r_,h

If r%>10 Then
Circle x%,y%,r%
r_=Int((2*Sqr(3)-3)*r%)
h=r%-r_
tcir(x%-h,y%,r_)
tcir(x%+h/2,y%+r_,r_)
tcir(x%+h/2,y%-r_,r_)
EndIf
End Sub

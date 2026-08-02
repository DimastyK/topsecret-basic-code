'quasicrystal processing
CLS
dimpix=0.4
numv=7
po=Pi/numv
tempo=0.1

For py=-159 To 159
y=py*dimpix
For px=-159 To 159
x=px*dimpix

ori=0
som=0
For i=0 To numv
sen=Sin(ori)
cose=Cos(ori)
som=som+Cos(cose*x+sen*y+tempo+1)/2
ori=ori+po
Next i
isom=Int(som)
dsom=som-isom

If (isom Mod 2)=0 Then
som=dsom
Else
som=1-dsom
EndIf
gr=Int(som*255)
Pixel px+159,py+159,RGB(gr,gr,gr)

Next px
Next py

' 1st program i wrote
CLS
Dim j As integer
For i=0 To MM.HRES
j=i/320*255
Rem Color RGB(j,255-i,127)
Line i,0,320-i,319,,RGB(j,255-j,0)
Line 0,i,319,319-i,,RGB(j,255-j,0)
Next i
Rem Pause 3000
Color RGB(255,255,255)
Rem 63 If Inkey$="" Then GoTo 63
Font 3
Print @(10,160) "Hola, PicoCalc!"
65 If Inkey$="" Then GoTo 65

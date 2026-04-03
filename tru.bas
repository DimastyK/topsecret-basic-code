'truchet tile
CLS
DefineFont #8
 02410808
 03040808 101020c0 c0201010 08080403
 End DefineFont

 Font 8,1
For i=1 To 1600
 Print Chr$(65+Rnd());
 Next i

Do While Inkey$="":Loop

Font 1

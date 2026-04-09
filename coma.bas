'color mash
co%=0
Randomize timer'&h123456
CLS
For x=0 To 320 Step 4
For y=0 To 320 Step 4
co%=RGB(Int(255*Rnd()),Int(255*Rnd()),Int(255*Rnd()))
Box x,y,4,4,1,co%,co%
Next y
Next x

Do
x=4*Int(80*Rnd())
y=4*Int(80*Rnd())
co%=Pixel(x,y)

'Box x,y,2,2,1,co%,co%
Box x+4,y,4,4,1,co%,co%
Box x-4,y,4,4,1,co%,co%
Box x,y+4,4,4,1,co%,co%
Box x,y-4,4,4,1,co%,co%
Loop Until Inkey$=Chr$(27)

'tesselaion QB program
CLS
p=40'period
n=1
t=0'threshold
m=6.28318/p
For y=0 To p-1
b=y-95
For x=0 To p-1
a=x-139

If Cos(a*m+Sin(b*m)*n)+Cos(b*m+Sin(a*m)*n)>t Then
hc=&Hffffff
Else
hc=0
EndIf
For d=y To 319 Step p
For c=x To 319 Step p
Pixel c,d,hc
Next c
Next d
Next x
Next y

'Tektronix 4051
CLS
c=Pi/180
s=4
For a=0 To 3600 Step 7
x=160+s*25*Cos(a*c)
y=160+s*25*Sin(a*c)
ll=10*s
la=1.7*a
Line x,y,x+ll*Cos(la*c),y+ll*Sin(la*c)
Next a

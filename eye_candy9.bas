'Eye Candy #9, JB forum
CLS
xmax=320
ymax=320
xc=xmax/2
yc=ymax/2
diag=Int(yc*Sqr(2))
maxc=diag+200

'Randomize &h1234567
pr=0.28'Rnd(1)^2
pg=0.36'Rnd(1)^2
pb=0.487'Rnd(1)^2

Dim col(maxc)
cn=0
For i=0 To diag+200
cn=cn+0.2
col(i)=RGB(127+127*Sin(pr*cn),127+127*Sin(pg*cn),127+127*Sin(pb*cn))
Next i
s=0
For a=0 To 2*Pi Step Pi/360
i=40*Sin(s)'2*s or just s
For r=0 To diag
Color col(r+i+100)
Box xc+r*Cos(a),yc+r*Sin(a),2,2
Next r
s=s+2*Pi/22.5
Next a
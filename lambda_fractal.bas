OPTION EXPLICIT
OPTION DEFAULT NONE

CONST Width  = 320
CONST Height = 320
CONST MaxIt  = 120
CONST Escape = 100.0

'lambda (0.85 + 0.6i)
DIM FLOAT l_re = 0.85
DIM FLOAT l_im = 0.60

DIM FLOAT CenterX = 0.5
DIM FLOAT CenterY = 0.0
DIM FLOAT Scale   = 0.006

DrawFractal

DO WHILE INKEY$ = "" : LOOP
END

FUNCTION GetGradientColor(smooth_k AS FLOAT) AS INTEGER
  LOCAL INTEGER r, g, b
  LOCAL FLOAT t = smooth_k * 0.12
  
  r = INT(127.5 * (1.0 + SIN(t + 0.0)))
  g = INT(127.5 * (1.0 + SIN(t + 2.094))) ' + 2*Pi/3
  b = INT(127.5 * (1.0 + SIN(t + 4.188))) ' + 4*Pi/3
  
  GetGradientColor = RGB(r, g, b)
END FUNCTION

SUB DrawFractal
  LOCAL INTEGER mx = Width \ 2
  LOCAL INTEGER my = Height \ 2
  LOCAL INTEGER x, y, k, col
  LOCAL FLOAT z_re, z_im, t_re, t_im, next_re, next_im
  LOCAL FLOAT mag_sq, smooth_k
  LOCAL FLOAT escape_sq = Escape * Escape
  LOCAL FLOAT log2 = LOG(2.0)
  LOCAL FLOAT log_esc = LOG(Escape)
  
  CLS RGB(0, 0, 0)
  
  FOR x = 0 TO Width - 1
    FOR y = 0 TO Height - 1

      z_re = CenterX + (x - mx) * Scale
      z_im = CenterY + (y - my) * Scale
      k = 0
      
      DO WHILE k < MaxIt
        mag_sq = z_re * z_re + z_im * z_im
        IF mag_sq >= escape_sq THEN EXIT DO
        
        t_re = 1.0 - z_re
        t_im = -z_im
        
        next_re = z_re * t_re - z_im * t_im
        next_im = z_re * t_im + z_im * t_re
        
        z_re = l_re * next_re - l_im * next_im
        z_im = l_re * next_im + l_im * next_re
        
        k = k + 1
      LOOP
      
      IF k < MaxIt THEN
        '(Smooth Coloring)
        smooth_k = k + 1.0 - LOG(LOG(SQR(mag_sq)) / log_esc) / log2
        col = GetGradientColor(smooth_k)
        PIXEL x, y, col
      ENDIF
    NEXT y
  NEXT x
END SUB

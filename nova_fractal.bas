' Nova Fractal 320x320 for MMBasic
OPTION EXPLICIT
OPTION DEFAULT FLOAT

CONST W = 320
CONST H = 320
CONST MAX_ITER = 40
CONST TOL = 0.0001

DIM cx_min = -2.2, cx_max = 1.2
DIM cy_min = -1.7, cy_max = 1.7

DIM R_re = 1.0, R_im = 0.0

DIM px, py, iter
DIM c_re, c_im, z_re, z_im, z_old_re, z_old_im
DIM z2_re, z2_im, z3_re, z3_im
DIM num_re, num_im, den_re, den_im, den_mag2
DIM div_re, div_im, diff_re, diff_im
DIM col

CLS

FOR py = 0 TO H - 1
  c_im = cy_min + (py / (H - 1)) * (cy_max - cy_min)
  
  FOR px = 0 TO W - 1
    c_re = cx_min + (px / (W - 1)) * (cx_max - cx_min)
    
    ' z0 = 1 + 0i
    z_re = 1.0
    z_im = 0.0
    
    FOR iter = 1 TO MAX_ITER
      z_old_re = z_re
      z_old_im = z_im
      
      ' z^2
      z2_re = z_re * z_re - z_im * z_im
      z2_im = 2.0 * z_re * z_im
      
      ' z^3
      z3_re = z2_re * z_re - z2_im * z_im
      z3_im = z2_re * z_im + z2_im * z_re
      
      ' z^3 - 1
      num_re = z3_re - 1.0
      num_im = z3_im
      
      ' 3 * z^2
      den_re = 3.0 * z2_re
      den_im = 3.0 * z2_im
      
      den_mag2 = den_re * den_re + den_im * den_im
      IF den_mag2 = 0 THEN EXIT FOR
      
      '(z^3 - 1) / (3 * z^2)
      div_re = (num_re * den_re + num_im * den_im) / den_mag2
      div_im = (num_im * den_re - num_re * den_im) / den_mag2
      
      'z = z - R * div + c
      z_re = z_re - (R_re * div_re - R_im * div_im) + c_re
      z_im = z_im - (R_re * div_im + R_im * div_re) + c_im
      
      diff_re = z_re - z_old_re
      diff_im = z_im - z_old_im
      IF (diff_re * diff_re + diff_im * diff_im) < TOL THEN EXIT FOR
    NEXT iter
    
    IF iter > MAX_ITER THEN
      col = RGB(BLACK)
    ELSE
      col = RGB((iter * 12) MOD 256, (iter * 25) MOD 256, (iter * 45 + 80) MOD 256)
    END IF
    
    PIXEL px, py, col
  NEXT px
NEXT py

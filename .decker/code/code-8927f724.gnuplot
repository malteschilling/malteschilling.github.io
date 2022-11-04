set xrange [0:2500]
set yrange [0:1500]
set fit quiet
set xtics nomirror
set ytics nomirror 
set key off
set tic font ",20"
set border 3
set margins 15

set xlabel "Grundstückspreis in 1000€" textcolor rgb "black" font "Arial, 25" offset 0
set ylabel "Grundstücksgröße in m^2" textcolor rgb "black" font "Arial, 25" offset 0 rotate by 90

f1(x) = a + b * x
f2(x) = c + d * x + e * x * x
f3(x) = f + g * x + h * x * x + i * x * x * x

FIT_LIMIT = 1e-6

fit [0:2000] [0:1500] f1(x) "data/house-price-to-size.dat" via a,b
fit [0:2000] [0:1500] f2(x) "data/house-price-to-size.dat" via c,d,e
fit [0:2000] [0:1500] f3(x) "data/house-price-to-size.dat" via f,g,h,i

plot "data/house-price-to-size.dat" with points pt 7 ps 1 lw 1 lc rgb "#F09838", f1(x) title "Test" lc "blue"  lw 3, f2(x) lc "green" lw 3,  f3(x) lc "red" lw 3
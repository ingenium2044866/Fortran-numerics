

unset grid
set key bottom font "Courier,8"
set title font ",10"
set tics font "Courier,9"
set xlabel font ",9"
set ylabel font ",9"

set xlabel 'Zeit [s]'
set ylabel 'Geschwindigkeit [m/s]'
set title 'Algorithmen bei n = 2'

set style line 1 lt 2 dt 2 lc rgb "red" lw 1.5

show style line

set multiplot layout 2,2
set title 'Algorithmen bei n = 2'
plot 'euler-n2' using 1:2 with linespoints title 'Euler-Cauchy',\
     'rk2-n2' using 1:2 with linespoints title 'Runge-Kutta 2.Ordnung' lc rgb "blue",\
     'rk4-n2' using 1:2 with linespoints title 'Runge-Kutta 4.Ordnung' lc rgb "black",\
     55.02524674*tanh(.1782817994*x) with lines ls 1 title 'exakt' 

set title 'Algorithmen bei n = 5'
plot 'euler-n5' using 1:2 with linespoints title 'Euler-Cauchy',\
     'rk2-n5' using 1:2 with linespoints title 'Runge-Kutta 2.Ordnung' lc rgb "blue",\
     'rk4-n5' using 1:2 with linespoints title 'Runge-Kutta 4.Ordnung' lc rgb "black",\
     55.02524674*tanh(.1782817994*x) with lines ls 1 title 'exakt' 

set title 'Algorithmen bei n = 10'
plot 'euler-n10' using 1:2 with linespoints title 'Euler-Cauchy',\
     'rk2-n10' using 1:2 with linespoints title 'Runge-Kutta 2.Ordnung' lc rgb "blue",\
     'rk4-n10' using 1:2 with linespoints title 'Runge-Kutta 4.Ordnung' lc rgb "black",\
     55.02524674*tanh(.1782817994*x) with lines ls 1 title 'exakt'

set title 'Algorithmen bei n = 20'
plot 'euler-n20' using 1:2 with linespoints title 'Euler-Cauchy',\
     'rk2-n20' using 1:2 with linespoints title 'Runge-Kutta 2.Ordnung' lc rgb "blue",\
     'rk4-n20' using 1:2 with linespoints title 'Runge-Kutta 4.Ordnung' lc rgb "black",\
     55.02524674*tanh(.1782817994*x) with lines ls 1 title 'exakt'

unset multiplot
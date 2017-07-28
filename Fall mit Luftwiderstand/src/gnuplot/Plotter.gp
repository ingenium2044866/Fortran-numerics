

set grid
set key bottom font "Courier,12"
set title font ",14"
set tics font "Courier,12"
set xlabel font ",12"
set ylabel font ",12"

set xlabel 'Zeit [s]'
set ylabel 'Geschwindigkeit [m/s]'
set title 'Euler-Algorithmus beim senkrechten Wurf'

set style line 1 lt 2 dt 2 lc rgb "red" lw 1.5

show style line

plot 'euler-n5' using 1:2 with linespoints title 'n = 5, {/Symbol D}t = 4 s',\
     'euler-n20' using 1:2 with linespoints title 'n = 20, {/Symbol D}t = 1 s',\
     'euler-n1000' using 1:2 with lines title 'n = 100, {/Symbol D}t = 0.2 s',\
     55.02524674*tanh(.1782817994*x) with lines ls 1 title 'exakt' 
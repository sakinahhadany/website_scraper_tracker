set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/george_russell_positions.png"

set title "George Russell – Finishing Positions per Race"
set xlabel "Grand Prix"
set ylabel "Finishing Position"

set datafile separator "\t"
set grid ytics

set yrange [20:1]

set style line 1 lc rgb "black" lw 3 pt 7 ps 1.5

set xtics 0,1
set format x "GP%g"

plot "data/george_russell_positions.dat" using ($0+1):3 with linespoints ls 1 notitle

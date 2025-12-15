set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/fastest_lap_speed_per_race.png"

set title "Fastest Lap Speed per Race"
set xlabel "Race"
set ylabel "Speed (km/h)"

set datafile separator "\t"
set grid ytics

set style line 1 lc rgb "black" lw 3 pt 7 ps 1.5

set xtics 0,1
set format x "GP%g"

plot "data/fastest_lap_speed_per_race.dat" using ($0+1):3 with linespoints ls 1 notitle



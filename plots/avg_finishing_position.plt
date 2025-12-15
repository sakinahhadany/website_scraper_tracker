set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/avg_finishing_position.png"

set title "Average Finishing Position per Driver"
set xlabel "Driver"
set ylabel "Average Position"

set datafile separator "\t"
set xtics rotate by -45
set grid ytics
set yrange [20:1]

set style data points
set pointsize 5

plot "data/avg_finishing_position.dat" using 2:xtic(1) notitle

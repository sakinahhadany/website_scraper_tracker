set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/constructor_championship.png"

set title "Constructor Championship – Total Points"
set xlabel "Constructor"
set ylabel "Points"

set style data histograms
set style fill solid 1.5 border linecolor rgb "#000000"

set xtics rotate by -45
set grid ytics
set datafile separator "\t"

plot "data/constructor_championship.dat" using 2:xtic(1) notitle

set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/podiums_per_driver.png"

set title "Podiums per Driver (Top 3 Finishes)"
set xlabel "Driver"
set ylabel "Podiums"

set style data histograms
set style fill solid 1.5 border linecolor rgb "#000000"

set datafile separator "\t"
set xtics rotate by -45
set grid ytics

plot "data/podiums_per_driver.dat" using 2:xtic(1) notitle

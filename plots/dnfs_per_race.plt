set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/dnfs_per_race.png"

set title "DNFs per Race"
set xlabel "Grand Prix"
set ylabel "DNFs"

set style data histograms
set style fill solid 1.5 border linecolor rgb "#000000"

set xtics rotate by -45
set grid ytics
set datafile separator "\t"

plot "data/dnfs_per_race.dat" using 3:xtic(2) notitle
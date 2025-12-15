set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/dnfs_per_team.png"

set title "Constructor Reliability – DNFs"
set xlabel "Constructor"
set ylabel "DNFs"

set style data histograms
set style fill solid 1.5 border linecolor rgb "#000000"

set datafile separator "\t"
set xtics rotate by -45
set grid ytics

plot "data/dnfs_per_team.dat" using 2:xtic(1) notitle

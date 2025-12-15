#set terminal pngcairo size 2000,900 enhanced font "Arial,14"
#set output "graphs/team_points_per_race.png"

#set title "Points per Team per Race"
#set xlabel "Race"
#set ylabel "Points"

#set style data histograms
#set style histogram rowstacked
#set style fill solid 1.0 border lc rgb "black"

#set datafile separator "\t"
#set xtics rotate by -45
#set grid ytics

#plot "data/team_points_per_race.dat" using 4:xtic(2) title columnhead(3)

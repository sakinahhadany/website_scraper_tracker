# Driver Championship Bar Chart

# Set terminal and output
set terminal pngcairo size 2000,800 enhanced font "Arial,16"
set output "graphs/driver_championship.png"

# Title and axis labels
set title "Driver Championship – Total Points"
set xlabel "Driver"
set ylabel "Points"

# Bar style
set style data histograms
set style fill solid 1.5 border linecolor rgb "#000000"  

# Rotate x-axis labels and add grid
set xtics rotate by -45
set grid ytics

# Tab-separated data
set datafile separator "\t"

# Plot the data
plot "data/driver_championship.dat" using 2:xtic(1) notitle

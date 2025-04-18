# First output: PNG file
set terminal pngcairo size 1200,800 enhanced font 'Verdana,10'
set output 'res.png'


set xlabel "Timestep" font "Verdana,14"
set ylabel "Init Residuals" font "Verdana,14"
set yrange[1e-4:2e-2]
set grid
set key outside

plot \
    'logs/p_rgh_0' using 1:2 with lines lw 3 title 'p_rgh', \
    'logs/h_0' using 1:2 with lines lw 3 title 'h'

# Close the PNG output
set output

# Set up interactive display (choose one terminal type based on your system)
set terminal qt size 1200,800 enhanced font 'Verdana,10' persist
# Alternative terminals if qt doesn't work:
# set terminal wxt size 1200,800 enhanced font 'Verdana,10' persist
# set terminal x11 size 1200,800 enhanced font 'Verdana,10' persist

# Replot for the interactive display
replot

# Keep the plot open (not needed with 'persist' but added for completeness)
pause -1

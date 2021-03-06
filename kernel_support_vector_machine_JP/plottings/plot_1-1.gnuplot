#!/usr/bin/env gnuplot

set datafile separator ","
set terminal wxt
set grid
set xrange [0:1]
set yrange [0:1]
splot  "data_class_A.csv" using 1:2:3 with points pt 7 ps 2 lc '#FF3333' title 'Class A'
replot "data_class_B.csv" using 1:2:3 with points pt 7 ps 2 lc '#3333FF' title 'Class B'
replot +1                                              lw 1 lc '#FF3333' title 'z = +1'
replot -1                                              lw 1 lc '#3333FF' title 'z = -1'

pause -1

# vim: filetype=gnuplot

#!/bin/bash
#		
#
# Purpose:	Make standard and polar histograms
# GMT modules:	pshistogram, psrose
# 

ps=hist.ps

#awk '{print $4}' baz.txt | gmt psrose -: -A10r -S1.8in -P -Gorange -R0/1/0/360 -X2.5i -K -Bx0.2g0.2 -By30g30 -B+glightblue -W1p > $ps
#awk '{print $4}' baz.txt | gmt pshistogram -Bxa15f15+l"Topography (m)" -Bya20f20+l"Frequency"+u" %" -BWSne+t"Histograms"+glightblue -R0/360/0/600 -JX6.4i/2i -Gorange -Y6.0 -X10 -L1p -Z0 -W50 -P >> $ps

###################################################################################################################

awk '{print $4}' baz.txt | gmt pshistogram -Db -JX6.5i/3i -W0.5 -G0 -Z0 -Ggreen -L1p -R0/360/0/220 -Bxa30f30+l"Backazimuths (Degree)" -Bya30f30+l"No. of Events " -BWSne+t"Histogram"+glightblue -P -W15 -K > hist.ps

###################################################################################################################
#awk '{print $4}' baz.txt | gmt psrose -: -A10r -S1.8in -P -Gorange -R0/1/0/360 -Bx0.2g0.2 -By30g30 -B+glightblue -W1p -X2.5i -K >> $ps


#gmt psrose -A10r -S1.8in -Gorange -R0/1/0/360 -X2.5i -K -B0.2g0.2/30g30 -P > $ps

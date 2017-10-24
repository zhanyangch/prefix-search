reset
set ylabel 'time(sec)'
set style fill solid
set title 'performance comparison(search)'
set term png enhanced font 'Verdana,10'
set output 'search_time.png'

stat 'search-cpy-bench.txt' using 1 name 'CPY'
stat 'search-ref-bench.txt' using 1 name 'REF'

plot [0:100][0.04:0.06] 'search-cpy-bench.txt' using 1 title 'CPY-search',\
CPY_mean lt 1,\
'search-ref-bench.txt' using 1 title 'REF-search',\
REF_mean lt 2




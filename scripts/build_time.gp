reset
set ylabel 'time(sec)'
set style fill solid
set title 'performance comparison(build TST)'
set term png enhanced font 'Verdana,10'
set output 'build_time.png'

stat 'tst-cpy-bench.txt' using 1 name 'CPY'
stat 'tst-ref-bench.txt' using 1 name 'REF'

plot [0:100] 'tst-cpy-bench.txt' using 1 title 'CPY',\
CPY_mean lt 1,\
'tst-ref-bench.txt' using 1 title 'REF',\
REF_mean lt 2



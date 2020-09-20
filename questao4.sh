#!/bin/bash
a=$1
b=$2
c=$3

test -f $a && wc -l $a >> soma.txt || exit 0
test -f $b && wc -l $b >> soma.txt || exit 0
test -f $c && wc -l $c >> soma.txt || exit 0

cut -d ' ' -f1 soma.txt >> total.txt && paste -sd+ total.txt | bc && rm soma.txt total.txt

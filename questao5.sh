#!/bin/bash 
a=$1
b=$2
c=$3

ls $a | wc -l >> soma.txt || exit 0
ls $b | wc -l >> soma.txt || exit 0
ls $c | wc -l >> soma.txt || exit 0

paste -sd+ soma.txt | bc && rm soma.txt

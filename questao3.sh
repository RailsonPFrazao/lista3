#!/bin/bash
read -p "Esvreva o número para saber se ímpar ou par:" a
valor=$(($a%2))

if [ $valor == 0 ]
then	
	echo "Par"
else
	echo "Ímpar"
fi

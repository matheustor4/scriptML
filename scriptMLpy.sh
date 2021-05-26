#!/bin/bash

COUNTER=0
date >> output.csv
echo "Count Accuracy TimeToFit Date" >> output.csv

while true; do
	python3 MLpython.py
	DATETIME=$(date +"%Y-%m-%d/%T")
	echo $COUNTER $(cat aux.txt) $(cat fit.txt) $DATETIME >> output.csv
	COUNTER=$(echo $COUNTER+1 | bc)
	mv a.png prediction-$COUNTER.png
	mv b.png eigenface-$COUNTER.png
#	sleep 60
done

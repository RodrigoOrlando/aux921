#!/bin/bash

for i in `seq 1 $1`;
do
	line=`lscpu | head -14 | tail -1`
	echo $line | grep -oP "[0-9]+.[0-9]+"
done

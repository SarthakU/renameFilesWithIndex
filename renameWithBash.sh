#!/usr/bin/env bash

dir=$1
indexFile=$2

lines=$(cat $indexFile)


i=1
for l in $lines
do
  line=$l
  # line=${l#* } # uncomment this line if you want to remove the first word from the line
  
  i=$(($i+1))
  mv $dir/$line $dir/$i.txt
done


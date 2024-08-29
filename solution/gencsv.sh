#!/usr/bin/bash

for i in $(seq $1 $2)
  do n=$RANDOM
    echo $i, $n >> inputFile
  done

#!/usr/bin/env bash

for i in `seq 1 12`;
do
  for j in `seq 1 28`;
  do
    # I'm too lazy to check how many days are in a month
    if [ "$i" -lt "10" ]; then
      m=0"${i}"
    else
      m=${i}
    fi;
    if [ "$j" -lt "10" ]; then
      d=0"${j}"
    else
      d=${j}
    fi;
    dt=${m}${d}"12001980"
    echo ${dt} >> README.md
    cmd="date ${dt} && git add . && git commit -m \"commit\""
    eval ${cmd}
  done
done
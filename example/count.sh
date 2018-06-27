#!/bin/sh

COUNT=${COUNT:-10}

for n in $(seq 1 $COUNT); do
  echo $n
  sleep 1
done
#!/bin/bash
DICT=$(dirname "$0")/corncob-lowercase.txt
for i in {1..10}; do
  read -r -a words <<< $(shuf --random-source=/dev/urandom -n 5 $DICT | xargs)
  echo ${words[*]} | awk '{ printf "%-16s %-16s %-16s %-16s %-16s\n", $1, $2, $3, $4, $5 }'
done

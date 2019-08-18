#!/bin/bash
DICT=$(dirname "$0")/corncob-lowercase.txt
for i in {1..10}; do
  read -r -a words <<< $(shuf --random-source=/dev/urandom -n 4 $DICT | xargs)
  echo ${words[*]} | awk '{ printf "%-18s %-18s %-18s %-18s\n", $1, $2, $3, $4 }'
done

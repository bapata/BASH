#!/bin/bash


#
## Main starts here
#

declare -a cities=('sunnyvale' 'sanramon' 'burbank' 'losangeles' 'sacramento');

echo "== City Names =="
declare -i count=${#cities[@]}

declare -i index=0
while (( index < count ))
do
  echo "$index:${cities[index]}"
  (( index = index + 1 ))
done


## Adding additional cities
cities=("${cities[@]}" "stanton" "halfmoonbay")

# Reset counters
index=0
count=${#cities[@]}
echo "== City list after adding few more =="
while (( index < count ))
do
  echo "$index:${cities[index]}"
  (( index = index + 1 ))
done


## Replace a city
declare original="stanton"
declare new_city="mountainview"
echo "Replacing $original with $new_city ..."
echo ${cities[@]/$original/$new_city}

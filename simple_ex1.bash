#!/bin/bash

# To run this script, do this in Unix environment (Mac, Linux)
# chmod +x ./simple_ex1.bash
# ./simple_ex1.bash

# Print 1..10
echo "==Print 1 to 10=="
echo {1..10}

# Looping
echo "==Rows{1..5}, Column{4..7}=="
for row in {1..5}
  do
    for column in {1..3}
    do
      echo "$row,$column"
    done
done

# Functions
function double_it # IN: n, OUT: 2*n
{
  declare -i n=${1:?Integer argument required}
  echo "$n * 2" | bc
}

# Use function double_it
echo "Two times 6 is $(double_it 6)"
echo "Two times 16 is $(double_it 16)"
echo "Two times 28 is $(double_it 28)"

# Get Filename given full path
my_full_path="/a/b/c/d/e/f/myfile_name.txt"
file_name=$(basename $my_full_path)
extn=$(echo $file_name | awk -F"." '{print $NF}')
echo "File name is $(basename $my_full_path)"
echo "File extention is $extn"

# Print last field in a row
members="member1,member2,member3,memberLAST"
echo "Last member in $members is $(echo $members | awk -F, '{print $NF}')"
members="member1|member2|member3|memberLAST"
echo "Last member in $members is $(echo $members | awk -F"|" '{print $NF}')"

# Convert cases
big_string="thesanfranciscogoldengatebridge"
echo "Upcase of $big_string is $(echo $big_string | tr [a-z] [A-Z])"

# Remove unneed strings
sentence1="do not waste food"
modified_sentence=$(echo $sentence1 | sed 's/do not/please do not/g')
echo $modified_sentence

#!/bin/bash

# Output shorter version of a name
# Given long name as a double quoted string
# Example: ./shorten.bash "San Jose"
#          S5e  # We ignore space
#
declare in_str=${1:?name required in double-quotes}
declare trimmed_str=$(echo $in_str | tr -d ' ')
declare first_char=$(echo $trimmed_str|cut -c1)
declare -i total_len=$(echo -n $trimmed_str | wc -c)
declare -i count_to_use=$(( total_len - 2 ))
declare last_char=$(echo "${trimmed_str: -1}")
declare shortened_name="$first_char${count_to_use}$last_char"
echo $shortened_name

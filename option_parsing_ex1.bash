#!/bin/bash

# Let us assume that we want to write script as below
# myscript.bash [-h|?] [-v] -c config_file

function help_func
{
  echo "USAGE: $0 [-v] [-h|?] -c CONFIG_FILE"
}

#
## Main starts here
#


# POSIX variable
OPTIND=1         

# Initialize our own variables:
config_file=""
verbose=0

while getopts "h?vc:" opt; do
    case "$opt" in
    h|\?)
        help_func
        exit 0
        ;;
    v)  verbose=1
        ;;
    c)  config_file=$OPTARG
        ;;
    esac
done

shift $((OPTIND-1))

echo "verbose flag=$verbose" 
echo "config_file=$config_file"
echo "Remaining arguments (if any): $@"

# End of file

#!/usr/bin/awk -f

# takes input from stdin, one number per line and returns sum
# echo {1..10} | tr " " "\n"  | ./sum.awk

BEGIN {
  s=0
}
s+=$1
END {
  print "Sum:" s
}

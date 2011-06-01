#!/bin/bash
# USAGE: wrkspc.sh rows/cols +/-
# put the --get commands in here in place of 'echo'
rows=$(echo "1")
cols=$(echo "1")

if [ "$2" == "+" ]
then
    let rows=$rows+1
    let cols=$rows+1
elif [ "$2" == "-" ]
then
    let rows=$rows-1
    let cols=$rows-1
fi

if [ "$1" == "rows" ]
then
    # put your set rows command here:
    echo --set rows=$rows

elif [ "$1" == "cols" ]
then
    # put your set cols command here:
    echo --set rows=$cols
fi

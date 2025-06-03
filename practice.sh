#!/bin/bash

# var1=chandu
# var2=ram

# echo "$var1 and $var2 are good friends"

var1=$1
var2=$2 
DATE=$(date)

echo "$var1 and $var2 are good friend till $DATE"

echo "$?"

echo "$@"
echo "$#"
echo "$0"

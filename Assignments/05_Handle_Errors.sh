#!/bin/bash/

set -e
trap 'echo "x error on line $LINENO: $BASH_COMMAND": exit 1' ERR

echo "step 1: listing directory"

ls /home/ddd/  #this will trigger the trap 

echo " Step 2 :This wont execeute due to above error"
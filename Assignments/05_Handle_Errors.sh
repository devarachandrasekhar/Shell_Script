#!/bin/bash/

set -e
trap 'echo "x error on line $LINENO: $BASH_COMMAND": exit 1' ERR

echo "step 1: listing directory"

ls /home/ec2-user/  #this will trigger the trap 

echo " Step 2 :This wont execeute due to above error"


ls /home/ec2-usefffr/  #this will trigger the trap 
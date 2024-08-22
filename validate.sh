#!/bin/bash

# Define the host, user, and private key path
HOST="x.x.x.x"
USER="name"
KEY="/home/reddy/.ssh/id_rsa"

ssh -q -i $KEY -o BatchMode=yes -o StrictHostKeyChecking=no $USER@$HOST 'exit 0'
RCODE=$?
if [ $RCODE -ne 0 ]; then
    echo "Connection failed"
else
    echo "Connection successful"
fi

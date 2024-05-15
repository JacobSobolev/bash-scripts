#!/bin/bash

########################################
# Sends an email if the disk scape above $threshold
# otherwise, print the usage
# -----------------------------------
# df -h => shows all the disks information in a table format
# awk 'NR==2{print $5}' => takes only the second row and the 5th column
# sed 's/substr/replace' => searches a sub string pattern and replaces it with something or nothing
# mail -s "subject" => send email with subject "subject"
########################################

THRESHOLD=90
DISK=/ #when runing on windows make sure to use c:/ or similar
EMAIL="user@domain.com"

USAGE=$(df -h $DISK | awk 'NR==2{print $5}' | sed 's/%//')

if [ $USAGE -gt $THRESHOLD ]
then
    echo "Disk usage on server $HOSTNAME is above $THRESHOLD%" | mail -s "Disk alert" $EMAIL
    exit 1
else
    echo "Disk usage on server $HOSTNAME is below $THRESHOLD%"
    exit 0
fi
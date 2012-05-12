#!/bin/bash
 
cd /usr/share/mailman/bin/
 
./list_members -f Internal > "/scripts/lists/audit/Internal.txt"
 
touch "/scripts/lists/Internal.txt"
 
echo -e "XXX Mailing List -- For Auditing Purposes \n\n This is an automated email, please check your list of subscribers for accuracy, if there is a change that needs to be made please contact XXX, at XXX@XXX.XXX, thank you. \n\n" >> "/scripts/lists/Internal.txt"
 
cat "/scripts/lists/audit/Internal.txt" >> "/scripts/lists/Internal.txt"
 
SUBJECT="XXX Mailing List"
 
EMAIL="XXX@XXX.XXX"
 
EMAILMESSAGE="/scripts/lists/Internal.txt"
 
mail -s "$SUBJECT" "$EMAIL" < "$EMAILMESSAGE"
 
rm "/scripts/lists/Internal.txt"
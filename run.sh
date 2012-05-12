#!/bin/bash
 
cd "/scripts/"
 
./list1.sh
./list2.sh
./list3.sh
 
rm -R "/scripts/lists/audit"
mkdir "/scripts/lists/audit"
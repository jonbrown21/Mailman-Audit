Mailman-Audit
=============

Audit the mailing lists and send email to users on a monthly basis with their subscribed users.

Usage
=============
These commands can be used to export a list of users and then have that list automatically emailed to you so that you can regularly be reminded to make sure that your mailman lists are free from errors, and or people that should no longer be on the lists. I have created two scripts that do this.

Script #1: The list querying script

This script runs the commands and generates the list, it then adds on the email text above the list of users and then sends it out as an email. I would name this script the name of the list so for example $listname.sh and then chmod the script 700 so that it is executable. You will want to use the above template for each of your mailing lists and save this into multiple scripts.

Script #2: The the scheduling script

You will want to schedule this script, I have mine set to once a month, what it does is, it runs all the scripts listed each script above uses the first template to query Mailman, generate the lists, append with email text and then send out to the list moderators.

There is a bit of trial and error here, first of all the user account must have sudo rights, so you may need to add the user running these scripts to the sudoers file or make them an administrator. Scheduling is a matter of setting up a crontab, I am using

0	0	1	*	*	/bin/bash /scripts/run.sh

this will make sure that it runs on the first day of each month.

Reference
=============
For more information on this project check out the project home here.

http://www.jonbrown.org/osx-mailman-tricks/

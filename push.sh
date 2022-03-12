#!/usr/bin/expect
git add *
git commit -m "commit"
spawn git push origin main
expect "*password:"
send "[passwd]\r"
interact

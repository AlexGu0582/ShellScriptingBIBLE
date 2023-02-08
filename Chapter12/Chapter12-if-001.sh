#!/bin/bash
#testing the else section
#
testuser=NoSuchUser
#
if grep $testuser /etc/passwd
then
  echo "The bash files for user $testuser are:"
  ls -a /home/$testuser/.b*
  echo
else
  echo "The user $testuser does not exist on this system."
  echo
fi

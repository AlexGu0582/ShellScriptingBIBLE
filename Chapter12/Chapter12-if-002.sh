#!/bin/bash
#Testing nested ifs - use elif
#
testuser=NoSuchUser
#
if grep $testuser /etc/passwd
  then
    echo "The user $testuser exists on the system."
  elif ls -d /home/$testuser
    then
      echo "The user $testuser does not exist on the system."
      echo "However, $testuser has a directory."
fi

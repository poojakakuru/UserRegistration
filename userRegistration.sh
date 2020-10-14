#!/bin/bash -x

echo "Welcome to user registration program"

read -p "Enter valid first name :" firstname

usernamepattern="^[[:upper:]][[:lower:]]{2,}"

if [[ $firstname =~ $usernamepattern ]]
then
   echo "valid firstname"
   
   read -p "Enter valid last name:" lastname

   if [[ $lastname =~ $usernamepattern ]]
   then
      echo "Valid lastname"
   else
      echo "Invalid lastname,please enter valid last name"
   fi
else
   echo "invalid firstname,please enter valid first name"
fi

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

read -p "Enter your emailID:" email

emailpattern="^[A-Za-z0-9]+([._+-][0-9a-zA-Z]+)?@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?"

if [[ $email =~ $emailpattern ]]
then
   echo "valid email"
else
   echo "invalid email"
fi

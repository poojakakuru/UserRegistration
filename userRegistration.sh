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

read -p "Enter valid phone number:" phonenumber

pattern="^[0-9]{2}[[:space:]][0-9]{10}$"

if [[ $phonenumber =~ $pattern ]]
then
   echo "valid phone number"
else
   echo "invalid phone number"
fi

read -p "Enter password:" password

pattern="^.{8,}$"

if [[ $password =~ $pattern ]]
then
   echo $password "is having 8 characters"

   if [[ "$password" =~ [A-Z] && "$password" =~ [0-9] && "$password" =~ [#!@*?] ]];
   then
      echo $password "Is valid"
   else
      echo $password "is invalid"
   fi
else
   echo "Invalid password"
fi

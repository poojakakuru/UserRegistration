#!/bin/bash -x

echo "Welcome to user registration program"

read -p "Enter valid user name :" username

usernamepattern="^[[:upper:]][[:lower:]]{3,}"

if [[ $username =~ $usernamepattern ]]
then
   echo "valid username"
else
   echo "invalid username"
fi

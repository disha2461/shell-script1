#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "Error:: Please run this script with root access"

fi

yum remove postfix -y

if [ $? -ne 0 ]
then
   echo "Installation of postfix is error(not removed)"
   exit 1
else
   echo "installation of postfix is success(removed)"
fi

yum remove maven -y

if [ $? -ne 0 ]
then
   echo "Installation of maven is error(not removed)"
   exit 1
else
   echo "Installation of maven is success(removed)"
fi


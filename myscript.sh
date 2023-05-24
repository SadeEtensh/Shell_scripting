#! /bin/bash


#VARIABLES
NAME="Jack"

#echo "My Name is $NAME"

# read -p "Enter Name"  NAME
# echo " My name is $NAME"

# SIMPLE IF STATMENT

# if [ "$NAME" == "Sade" ]
# then
#     echo "Your Name is Sade"
# fi

#IF ELSE

# if [ "$NAME" == "Sade" ]
# then
#     echo "Your Name is Sade"
# else
#     echo "Your name is not Sade"
# fi

#ELSE-IF (elif)
if [ "$NAME" == "Sade" ]
then
    echo "Your Name is Sade"
elif [ "$NAME" == "Jack" ]
then
    echo "Your name is JacK"
else
    echo "Your name is not Sade or Jack"
fi
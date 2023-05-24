#! /bin/bash


#VARIABLES
#NAME="Jack"

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
# if [ "$NAME" == "Sade" ]
# then
#     echo "Your Name is Sade"
# elif [ "$NAME" == "Jack" ]
# then
#     echo "Your name is JacK"
# else
#     echo "Your name is not Sade or Jack"
# fi


#Comparison
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2

# NUM1=30
# NUM2=5

# if [ "$NUM1" -gt "$NUM2" ]
# then 
#     echo "$NUM1 is greater than $NUM2"
# else
#     echo "$NUM1 is Less than $NUM2"
# fi

##########
#File Conditions
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

# FILE="test.txt"

# if [ -e "$FILE" ]
# then
#     echo "$FILE is a file"
# else
#     echo "$FILE is not file"
# fi

#CASE STATEMENTS

read -p "Are U 21 or over? Y/N " ANSWER
case "$ANSWER" in
 [yY] | [yY][eE][sS])
    echo "You can have a beer :) "
    ;;
 [nN] | [nN][oO])
    echo "Sorry, No drinking"
    ;;
 *)
  echo "Please enter y/yes or n/No"
  ;;
  esac

#LOOPS
# NAMES="Sade Mark Jony Iris"

# for NAME in $NAMES
#     do 
#      echo "Hello $NAME"
# done


# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES  
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-1.txt"

# FUNCTION
function sayHello() {
  echo "Hello World"
}
# sayHello

# FUNCTION WITH PARAMS
# function greet() {
#   echo "Hello, I am $1 and I am $2"
# }

# greet "Sade" "26"

# CREATE FOLDER AND WRITE TO A FILE
# mkdir hello
# touch "hello/world.txt"
# echo "Hello World" >> "hello/world.txt"
# echo "Created hello/world.txt"
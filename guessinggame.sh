#!/usr/bin/env bash

function guess(){
    num1=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "pleas enter your guess"
        read  number
        if [ $number -lt $num1 ]
        then
            echo "your guess is Less then the files number"
        elif [ $number -gt $num1 ]
        then
            echo "your guess is Greater then the files number"
        else
            echo " congratulation,you are correct!"
        break;
        fi
    done
}
echo "guess the files number in the current directory"
guess

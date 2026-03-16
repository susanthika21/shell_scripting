#!/bin/bash

# Zero and one are not prime numbers
read -p "Enter a number greater than 1: " num

if [ "$num" -lt 2 ]; then
    echo "Number must be greater than 1"
    exit
fi

# Set a flag (0 means prime, 1 means not prime)
flag=0

# Loop to find if number is divisible by 2 or higher
# The loop runs up to num/2 as a number cannot have a factor greater than its half (other than itself)
for ((i = 2; i <= $(($num/2)); ++i)); do
    if [ $(($num % $i)) -eq 0 ]; then
        # If a divisor is found, set the flag to 1 and break the loop
        flag=1
        break
    fi
done

# Check the flag to determine the result
if [ $flag -eq 0 ]; then
    echo "$num is a prime number"
else
    echo "$num is not a prime number"
fi


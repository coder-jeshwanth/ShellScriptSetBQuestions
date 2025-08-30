#!/bin/bash

# Prompt user for salary
read -p "Enter your salary: " salary

# Calculate tax based on salary brackets
if [ "$salary" -lt 10000 ]; then
    tax=0
elif [ "$salary" -le 25000 ]; then
    tax=$(echo "$salary * 0.05" | bc)
else
    tax=$(echo "$salary * 0.10" | bc)
fi

# Display result
echo "Salary: ₹$salary"
echo "Calculated Tax: ₹$tax"

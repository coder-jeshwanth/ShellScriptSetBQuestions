#!/bin/bash

# Prompt user for a single character
read -p "Enter a single alphabet character: " char

# Convert to lowercase for uniform comparison
char_lower=$(echo "$char" | tr '[:upper:]' '[:lower:]')

# Check if input is a single alphabet letter
if [[ "$char" =~ ^[a-zA-Z]$ ]]; then
    case $char_lower in
        a|e|i|o|u)
            echo "$char is a vowel."
            ;;
        *)
            echo "$char is not a vowel."
            ;;
    esac
else
    echo "Invalid input. Please enter a single alphabet letter (A–Z or a–z)."
fi

#!/bin/bash

# Script Name: 05_manifesto_gen.sh
# Author: Anand Minejes
# Course: Open Source Software
# Description: Interactively generates a personalized Open Source Manifesto.

# Clear screen for an immersive experience
clear

echo "=========================================================="
echo "      WELCOME TO THE OPEN SOURCE MANIFESTO GENERATOR      "
echo "=========================================================="

# Prompt the user for their developer alias
echo "What is your developer alias?"
read -p "Alias: " DEV_ALIAS

# Prompt for their coding preference (Tabs or Spaces)
echo "Tabs or Spaces?"
read -p "Preference: " CODE_STYLE

# Ask for their favorite Python library for AI/FastAPI
echo "Name one open-source Python library you would use to build the future:"
read -p "Library: " PYTHON_LIB

# Compose the personalized manifesto text
# We use string concatenation to build the paragraph
MANIFESTO="I, $DEV_ALIAS, believe in an open-web future built on transparency and collaboration. My source code reflects my dedication to precision, favoring $CODE_STYLE to organize complex logic. With the power of $PYTHON_LIB, I will bridge the gap between AI innovation and modern backend architecture."

# Define the output filename based on the user's alias
OUTPUT_FILE="manifesto_${DEV_ALIAS}.txt"

# Write the manifesto to a file (overwrite if exists)
echo "$MANIFESTO" > "$OUTPUT_FILE"

# Add a timestamp to the bottom of the file
echo "Generated on: $(date)" >> "$OUTPUT_FILE"

echo ""
echo "--- YOUR MANIFESTO HAS BEEN GENERATED ---"
echo "Saved to: $OUTPUT_FILE"
echo "----------------------------------------------------------"

# Cat the file to the terminal so the user can see the final result
cat "$OUTPUT_FILE"

echo "=========================================================="
echo "Happy Hacking, $DEV_ALIAS!"

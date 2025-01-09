#!/bin/bash

# 1️⃣ Create the directory structure
echo "Creating the directory structure..."

# Create directories: my_project/scripts, my_project/docs, my_project/data
mkdir -p my_project/scripts my_project/docs my_project/data

# 2️⃣ Create a readme.txt file inside the docs folder
echo "Creating 'readme.txt' inside the 'docs' folder with content 'Welcome to Linux!'"
echo "Welcome to Linux!" > my_project/docs/readme.txt

# 3️⃣ Confirmation message
echo "Directory structure and file created successfully!"


# chmod +x create_project_structure.sh
# ./create_project_structure.sh

#!/bin/bash

# Step 1: Create Project Structure

# Create the project directory and subdirectories
mkdir -p ~/web_project/{frontend,backend,database}

# Create an HTML file inside 'frontend' with sample content
echo "<html><head><title>Welcome to Web Project</title></head><body><h1>Hello, Web Project!</h1></body></html>" > ~/web_project/frontend/index.html

# Create a Python file inside 'backend' with a simple script
echo 'print("Hello World")' > ~/web_project/backend/app.py

# Create an SQL file inside 'database' with sample SQL content
echo "CREATE TABLE users (id INT, name VARCHAR(100));" > ~/web_project/database/data.sql

# Set appropriate permissions and ownership for the directories and files
chmod -R 755 ~/web_project

# Step 2: Create and Manage Users

# Add two new users: alice and bob
sudo useradd alice
sudo useradd bob

# Create a new group 'admins'
sudo groupadd admins

# Add 'alice' to the 'admins' group
sudo usermod -aG admins alice

# Change the group ownership of the 'web_project' directory to 'admins'
sudo chgrp -R admins ~/web_project

# Provide confirmation messages
echo "Project structure created at ~/web_project"
echo "Users alice and bob created, with alice added to the admins group."
echo "Group ownership of the 'web_project' directory has been set to 'admins'."

# Optional: Display the created directory structure
echo "Here is the directory structure created:"
tree ~/web_project

# Optional: Display the users and groups for verification
echo "Users on the system:"
cat /etc/passwd | grep -E 'alice|bob'

echo "Groups and users information:"
groups alice
groups bob

# End of script

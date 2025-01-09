### Linux Overview 🌍🐧

Linux is an open-source operating system based on Unix. It is known for its stability, security, and flexibility. Users interact with Linux through a command-line interface (CLI) or graphical user interface (GUI). Linux is widely used in servers, desktops, and embedded systems.

---

### Basic Linux Commands 💻

#### 1. **File and Directory Management 📂**
   - `pwd`: Print the current working directory.
   - `ls`: List files and directories in the current directory.
   - `cd <dir>`: Change directory to `<dir>`.
   - `mkdir <dir>`: Create a new directory called `<dir>`.
   - `rmdir <dir>`: Remove an empty directory.
   - `touch <file>`: Create a new empty file.
   - `rm <file>`: Remove a file.
   - `rm -r <dir>`: Remove a directory and its contents (recursively).
   - `cp <source> <destination>`: Copy a file or directory.
   - `mv <source> <destination>`: Move or rename a file or directory.
   
---

#### 2. **File Viewing and Editing 📝**
   - `cat <file>`: Display the contents of a file.
   - `more <file>`: View a file page by page.
   - `less <file>`: View a file, scroll up and down.
   - `nano <file>`: Open and edit a file using the Nano text editor.
   - `vim <file>`: Open and edit a file using Vim (advanced editor).
   - `head <file>`: Display the first 10 lines of a file.
   - `tail <file>`: Display the last 10 lines of a file.
   - `grep <pattern> <file>`: Search for a pattern in a file.
   
---

#### 3. **File Permissions 🔐**
   - `chmod <permissions> <file>`: Change file permissions.
   - `chown <user>:<group> <file>`: Change the owner and group of a file.
   - `chgrp <group> <file>`: Change the group of a file.
   - `ls -l`: Display detailed file information, including permissions.
   
---

#### 4. **System Information 🖥️**
   - `uname -a`: Display system information (kernel version, etc.).
   - `df`: Display disk space usage.
   - `free`: Show memory usage.
   - `top`: Show system processes and resource usage.
   - `htop`: An interactive process viewer (requires installation).
   - `uptime`: Show how long the system has been running.
   - `ps`: List currently running processes.
   - `whoami`: Display the current logged-in user.
   - `hostname`: Display the system’s hostname.

---

#### 5. **Process Management ⚙️**
   - `ps aux`: Show all running processes.
   - `kill <pid>`: Terminate a process by its process ID.
   - `killall <process_name>`: Terminate all processes with the specified name.
   - `bg`: Resume a job in the background.
   - `fg`: Bring a job to the foreground.
   
---

#### 6. **Package Management 📦**
   - `apt-get update`: Update package list (Debian-based distros).
   - `apt-get upgrade`: Upgrade installed packages (Debian-based distros).
   - `apt-get install <package>`: Install a package (Debian-based distros).
   - `yum install <package>`: Install a package (Red Hat-based distros).
   - `dnf install <package>`: Install a package (Fedora).
   - `pacman -S <package>`: Install a package (Arch-based distros).
   
---

#### 7. **Networking 🌐**
   - `ifconfig`: Display network interface configuration.
   - `ip a`: Show network interfaces and their IP addresses.
   - `ping <hostname>`: Test network connectivity.
   - `netstat`: Show network connections.
   - `ssh <user>@<hostname>`: Connect to a remote machine via SSH.
   - `scp <file> <user>@<hostname>:<destination>`: Copy a file to a remote machine via SSH.
   - `wget <url>`: Download files from the internet.
   
---

#### 8. **User Management 👤**
   - `adduser <username>`: Create a new user.
   - `passwd <username>`: Change a user’s password.
   - `deluser <username>`: Delete a user.
   - `usermod -aG <group> <user>`: Add a user to a group.
   - `who`: Show who is logged into the system.
   - `su`: Switch to another user account.
   
---

#### 9. **Archiving and Compression 🗜️**
   - `tar -cvf <archive.tar> <dir>`: Create a tar archive.
   - `tar -xvf <archive.tar>`: Extract a tar archive.
   - `zip <archive.zip> <file>`: Compress a file into a zip archive.
   - `unzip <archive.zip>`: Extract a zip archive.
   - `gzip <file>`: Compress a file using gzip.
   - `gunzip <file.gz>`: Decompress a file using gzip.
   
---

#### 10. **Miscellaneous 🛠️**
   - `history`: Show command history.
   - `alias <alias_name>="<command>"`: Create a shortcut for a command.
   - `clear`: Clear the terminal screen.
   - `reboot`: Reboot the system.
   - `shutdown`: Shut down the system.
   - `man <command>`: Display the manual for a command.
   - `exit`: Exit the current session or terminal.

---

### Final Tips 💡
- Use `Tab` to autocomplete commands or filenames.
- Use `Ctrl + C` to cancel a running command.
- Use `Ctrl + Z` to pause a command (can be resumed with `fg`).
- Combine commands with `&&` or `|` for more complex tasks (e.g., `ls | grep "text"`).

Now you are ready to explore the world of Linux! 🚀

Not Completed Yet Brother.

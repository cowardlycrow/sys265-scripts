# SECURE-SSH.SH
# AUTHOR COWARDLYCROW
# Creates a new ssh user called $1
# Adds a public key to that users authorized keys file
# Removes roots ability to ssh in
#!bin/bash
echo "enter in username"
read name
sudo useradd $name
sudo mkdir /home/$name/.ssh
sudo cp linux/centos7/sys265.pub /home/$name/.ssh/authorized_keys
sudo chmod 700 /home/$name/.ssh
sudo chmod 600 /home/$name/.ssh/authorized_keys
sudo chown -R $name:$name /home/$name/.ssh

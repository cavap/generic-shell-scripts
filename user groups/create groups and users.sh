#!/bin/bash

echo "Creating user groups"
groupadd GROUP1
groupadd GROUP2
echo "User groups created"

echo "Creating users in each group"
useradd ana -m -s /bin/bash -p "$(openssl passwd -crypt changeYourPassword)" -G GROUP1
useradd brian -m -s /bin/bash -p "$(openssl passwd -crypt changeYourPassword)" -G GROUP1
useradd carol -m -s /bin/bash -p "$(openssl passwd -crypt changeYourPassword)" -G GROUP2
useradd daniel -m -s /bin/bash -p "$(openssl passwd -crypt changeYourPassword)" -G GROUP2
echo "Users created"

echo "Creating folders"
mkdir /adminFolder
mkdir /sharedFolder
echo "Folders created"

echo "Adding group permissions"
chown root:GROUP1 /adminFolder /sharedFolder
chown root:GROUP2 /sharedFolder
chmod 770 /adminFolder /sharedFolder
echo "Group permissions added"

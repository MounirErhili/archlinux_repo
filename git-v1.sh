#!/bin/bash

##################################################################
# Written to be used on 32|64 bits computers                     #
# Author  :   Mounir Erhili                                      #
# MailTo  :   mounirerhili@gmail.com                             #
##################################################################
##################################################################
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK. #
##################################################################

# are you want to clean up this repository!
read -p "are you want to clean up this repository! (yY)es|(nN)o : " cleanup
if [[ "$cleanup" == "Y" || "$cleanup" == "y" ]]; then
	mv .git/config config && rm -rf .git && . setup-git-v1.sh && mv config .git/config

	echo "################################################################"
	echo "#################   C L E A N U P   D O N E   ##################"
	echo "################################################################"
fi

# are you want to update the repo/repo_add?
read -p "are you want to update the repo/repo_add? (yY)es|(nN)o : " update_repo
if [[ "$update_repo" == "Y" || "$update_repo" == "y" ]]; then
	. archlinux_repo.sh
fi
 
# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull #origin master

# enable large files
# git lfs install

# add LFS tracking
# git lfs track "x86_64/dbeaver-ce*"
# git lfs track "x86_64/paper-icon-theme*"

# add all
git add --all .

# echo out git Changes
echo "echo out git Changes!"
git status

# if you want to continue this proccess plz press the enter key!
read -p "if you want to continue this proccess plz press the enter key! "

# Give a comment to the commit if you want
echo "####################################"
echo "#### Write your commit comment! ####"
echo "##### Default = first commit!  #####"
echo "####################################"

read input

if [[ -z "$input" ]]; then
	input="first commit!"
fi

# Committing to the local repository with a message containing the commit text
git commit -m "$input"

# Push the local files to github
# git push -u origin master
git push origin master --force

echo "################################################################"
echo "###############     G I T  P U S H  D O N E      ###############"
echo "################################################################"
#!/bin/bash

##################################################################
# Written to be used on 32|64 bits computers                     #
# Author  :   Mounir Erhili                                      #
# MailTo  :   mounirerhili@gmail.com                             #
##################################################################
##################################################################
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK. #
##################################################################

current_dir=$(pwd)

cd x86_64/

if [[ -f "archlinux_repo.db.tar.gz" ]]; then rm archlinux_repo*; fi

echo "# exec repo-add -n archlinux_repo.db.tar.gz *.pkg.tar.xz"
# repo-add -s -n archlinux_repo.db.tar.gz *.pkg.tar.xz
# repo-add -s -n archlinux_repo.db.tar.gz *.pkg.tar.zst
# repo-add -n archlinux_repo.db.tar.gz *.pkg.tar.zst
repo-add -n archlinux_repo.db.tar.gz *.pkg.tar.xz

rm archlinux_repo.db archlinux_repo.files

ln -sf archlinux_repo.db.tar.gz archlinux_repo.db

ln -sf archlinux_repo.files.tar.gz archlinux_repo.files

cd "$current_dir"

echo "####################################"
echo "###   R E P O   U P D A T E D!   ###"
echo "####################################"
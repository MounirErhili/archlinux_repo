# Archlinux Repository
**Use this Repository**

1. copy & paste this code below into : ``/etc/pacman.conf``
```sh
[archlinux_repo]
SigLevel = Optional TrustedOnly
Server = https://mounirerhili.github.io/$repo/$arch
```
* or open terminal and copy paste this code below.
```sh
echo -e '[archlinux_repo]\nSigLevel = Optional TrustedOnly\nServer = https://mounirerhili.github.io/$repo/$arch' | sudo tee -a /etc/pacman.conf && sudo pacman -Syyy
```
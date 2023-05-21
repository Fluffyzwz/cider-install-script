#Cider Install Script
![Installation Script For Cider](https://github.com/CiderApp/Cider)
Install these Recommended / Required Development Utilities
`Gentoo
emerge --ask nodejs dev-vcs/git dev-lang/python:3.8
`
Arch Linux
`pacman -S nodejs python`
Arch Linux - pnpm
`Install yay`
`git clone https://aur.archlinux.org/yay.git`
`cd yay`
`makepkg -si`
`cd ..`
`rm -rf yay`
`yay -S pnpm`

to use this script run
`chmod u+x ./cider-install-script.sh && ./cider-install-script.sh --answer the questions`

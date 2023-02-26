#! /usr/bin/bash

#install package
sudo apt-get update
sudo apt install vim
sudo apt install git
sudo snap install notepad-plus-plus

# create folder structure
mkdir -p work

#setup display

tee -a ~/.bashrc <<EOF

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\[\033[32m\]\w-\$(parse_git_branch)\[\033[00m\]$ "

EOF

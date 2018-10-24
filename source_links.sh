# install necessary software
sudo apt-get update
sudo apt-get install && \
	git 
	curl
	vim
	zsh
	


#!/bin/bash

source_file () {
    local filename=$1

    destination="${HOME}/${filename}"

    if [ ! \( -e "${destination}" \) ]
    then
        ln -s ${PWD}/${filename} ${destination}
    else
        echo "file ${destination} already exists."
    fi
}

source_file ".vimrc"
source_file ".gitconfig"
source_file ".oh-my-zsh"
source_file ".zshrc"

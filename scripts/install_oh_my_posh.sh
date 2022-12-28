#!/bin/sh

# Do nothing if oh-my-posh is already installed
if command -v oh-my-posh >/dev/null; then
	echo 'oh-my-posh is already installed'
else
	# Install oh-my-posh
	sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
	sudo chmod +x /usr/local/bin/oh-my-posh
fi

if [ -d ~/.poshthemes ]; then
	echo 'poshthemes are already installed'
else
	# Install themes
	mkdir ~/.poshthemes
	wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
	unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
	chmod u+rw ~/.poshthemes/*.omp.*
	rm ~/.poshthemes/themes.zip
fi


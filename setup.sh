#!/bin/sh

pip3 install -r requirements.txt

ROOT_DIR="'$PWD'"
 

FILE=racnarok.py
if [ -f "$FILE" ];
then
	chmod +x racnarok.py
	mv racnarok.py racnarok
fi

sed -i '/^import os/a ROOT_DIR='$ROOT_DIR racnarok


mkdir -p ~/bin

cp racnarok ~/bin

export PATH="$PATH:$HOME/bin"
env $PATH
echo 'export PATH=$PATH":$HOME/bin"' >> .profile

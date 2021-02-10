#!/bin/bash

#Author: github.com/Lukatze
#Just a simple install script that puts everything into place and starts SystemD timer as user

mkdir -p ~/.config/systemd/user
mkdir -p ~/.scripts

sed -i 's/$USER/'"$USER"'/g' monitor.service #writes the correct User into the service file

cp monitor.sh ~/.scripts
cp install.sh ~/.scripts
cp monitor.service ~/.config/systemd/user/
cp monitor.timer ~/.config/systemd/user/

echo "created dirs and moved everything into place"

systemctl --user enable --now monitor.timer

echo "done"

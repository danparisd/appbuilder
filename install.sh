#!/bin/bash

curl -fsSL http://packages.sil.org/sil.gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://packages.sil.org/ubuntu $(lsb_release -cs) main"
sudo apt install scripture-app-builder
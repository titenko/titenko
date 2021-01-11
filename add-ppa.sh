#!/bin/bash
which curl || (echo "Package not found! Installation..."; sudo apt install curl || echo "something went wrong")
curl -s --compressed "https://titenko.github.io/titenko/ubuntu/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/titenko.list "https://titenko.github.io/titenko/ubuntu/titenko.list"
sudo apt update
 

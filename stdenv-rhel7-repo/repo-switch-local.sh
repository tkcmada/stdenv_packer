#!/bin/sh

cd /etc/yum.repos.d
sudo mkdir -p bak
sudo mv *.* bak/
sudo mv bak/localrepo.repo .
echo "switched to localrepo"

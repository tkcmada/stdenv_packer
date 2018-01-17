#/bin/sh

cd /etc/yum.repos.d
sudo mkdir -p bak
sudo mv bak/*.* .
sudo mv localrepo.repo bak/
echo "disabled localrepo and switched to internet repo"

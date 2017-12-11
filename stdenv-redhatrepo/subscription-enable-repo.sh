#!/bin/bash

echo "RHEL_USER:$RHEL_USER"
echo "RHEL_PASSWORD:$RHEL_PASSWORD"
subscription-manager register --name="docker_$HOSTNAME" --username=$RHEL_USER --password=$RHEL_PASSWORD || exit 1
subscription-manager list --available > subscription-available.txt || exit 1
python subscription-find-pool.py < subscription-available.txt > pool.txt || exit 1
subscription-manager subscribe --pool=`cat /root/pool.txt` || exit 1
for repo in $@
do
  echo enabling $repo
  subscription-manager repos --enable=$repo || exit 1
done || exit 1
exit 0



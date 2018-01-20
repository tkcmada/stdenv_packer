#!/bin/bash

RHEL_USER=$1
RHEL_PASSWORD=$2
shift
shift

echo "RHEL_USER:$RHEL_USER"
echo "RHEL_PASSWORD:$RHEL_PASSWORD"

if [ "$RHEL_USER" = "" ]
then
  echo "RHEL_USER is not set yet"
  exit 1
fi

if [ "$RHEL_PASSWORD" = "" ]
then
  echo "RHEL_PASSWORD is not set yet"
  exit 1
fi

echo "registering..."
subscription-manager register --name="ec2_$HOSTNAME" --username=$RHEL_USER --password=$RHEL_PASSWORD || exit 1
subscription-manager list --available > subscription-available.txt || exit 1
python subscription-find-pool.py < subscription-available.txt > pool.txt || exit 1
echo "subscribing pool..."
subscription-manager subscribe --pool=`cat pool.txt` || exit 1
for repo in $@
do
  echo enabling $repo
  subscription-manager repos --enable=$repo || exit 1
done || exit 1
exit 0



#!/bin/bash

# Program Name: hw7.sh
# Authors: Lizz Premer, Jacob Dugan, Haofeng Tian, Miao Zhou
# Date Due: 19 May 2019
# Description: Bash script to run four Alpine Vm servers from a single CentOS controller




#create and ssh key for the CentOS controller
ssh-keygen -t res


#promt user for each Alpine VM IP address
echo "Enter Alpine IP #1: "
read ip1
echo "Enter Alpine IP #2: "
read ip2
echo "Enter Alpine IP #3: "
read ip3
echo "Enter Alpine IP #4: "
read ip4


#concatenate "root@" and the ip addresses
ipvar1="root@$ip1"
ipvar2="root@$ip2"
ipvar3="root@$ip3"
ipvar4="root@$ip4"

# copy centOS controller ssh key to each Alpine VM
ssh-copy-id -i ~/.ssh/id_rsa $ipvar1
ssh-copy-id -i ~/.ssh/id_rsa $ipvar2
ssh-copy-id -i ~/.ssh/id_rsa $ipvar3
ssh-copy-id -i ~/.ssh/id_rsa $ipvar4

sleep 2

# replace all instances of IP addresses in hosts.ini
sed -i "s/ip1/$ip1/g" hosts.ini
sed -i "s/ip2/$ip2/g" hosts.ini
sed -i "s/ip3/$ip3/g" hosts.ini
sed -i "s/ip4/$ip4/g" hosts.ini


sleep 2


#runs the playbook
ansible-playbook webserver.yaml -i ./hosts.ini

curl $ip1
curl $ip2
curl $ip3
curl $ip4

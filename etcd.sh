#!/bin/bash -xe
#Script to install coreos on macmini
apt-get install curl gawk
curl --remote-name https://raw.githubusercontent.com/coreos/init/master/bin/coreos-install
chmod u+x coreos-install

curl --remote-name https://raw.githubusercontent.com/gilgameshskytrooper/coreos-bootstrap/master/headnode.yml

#./coreos-install -d /dev/sda -c cloud-config.yml -C stable
./coreos-install -d /dev/sda -c headnode.yml

rm -rf coreos-install head.yml

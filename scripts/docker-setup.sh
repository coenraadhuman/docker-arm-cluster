#!/bin/bash

distroName=`cat /etc/os-release | grep ID=ubuntu`

if [ -z "$distroName" ]
    then
        echo "[..ERR..] Not applicable distro."
    else
        echo "Install docker dependencies."
        apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg

        echo "Add ubuntu docker apt key."
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

        osArchitecture=`uname -m`

        echo "Use Debian binary, since "
        add-apt-repository "deb [arch=armhf] https://download.docker.com/linux/debian buster stable"

        echo "Install docker."
        apt install -y docker-ce
        usermod -aG docker $USER

        echo "Start docker service."
        systemctl start docker.socket
        systemctl start docker.service

        echo "Enalbe docker service."
        systemctl enable docker.socket
        systemctl enable docker.service
fi
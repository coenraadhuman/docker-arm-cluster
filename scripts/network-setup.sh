#!/bin/bash

if [ -z "$1" ]
    then
        echo "[..ERR..] No hostname argument was supplied."
        enterHostname()
        installMulticaseDns()
    else
        setHostname() $1
        installMulticaseDns()
fi

installMulticaseDns() {
    echo "Installing multicast DNS."
    apt install -y libnss-mdns

    if [[ $? -eq 0 ]]
        then
            echo "[..OK...] Installed multicast DNS."
        else
            echo "[..ERR..] Multicast installation failed."
    fi
} 

setHostname () {
    echo "Setting hostname for multicast DNS."
    hostnamectl set-hostname $1
    if [[ $? -eq 0 ]]
        then
            echo "[..OK...] Hostname set succesfully."
        else
            echo "[..ERR..] Failed setting hostname."
    fi
    printHostname() $1
}

enterHostname() {
    enterHostnameMessage="Please enter desired hostname: "
    echo $enterHostnameMessage
    while read selectedHostname; 
        do
            if [ -z $selectedHostname ]; 
                then
                    echo "[..ERR..] No hostname argument was supplied."
                    echo $enterHostnameMessage
                else
                    break
            fi
    done
    setHostname() $selectedHostname
}

printHostname() {
    echo "Selected hostname will be Multicast DNS address: "
    echo $1
}
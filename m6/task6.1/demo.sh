#!/bin/bash

# configuration
declare -A ht
ht=(
    ["all"]="Displays the IP addresses and symbolicnames of all hosts in the current subnet"
    ["target"]="List of open TCP ports"
)



# functions


function display () {
    # echo information about
    # 1 is key
    # 2 is a desription
    echo "************Information about command***************"
    echo "Usage: --$1"
    echo "----------------------------------------------------"
    echo "Description: $2"
    echo "*************End of command information*************"
}


function __all () {
    ip a
    cat /etc/hosts
    cat /etc/networks
}



function __target () {
    cat /etc/services | grep tcp
}


if (($#))
then
    # parcig command
    while (($#))
    do
        ${1/"--"/"__"}
        shift
    done
else
    # script do not recive any args
    # just show info about command
    for key in "${!ht[@]}"
    do
        display "$key" "${ht[$key]}"
    done
fi

# End of script
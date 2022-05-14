#!/bin/bash

# configuration
declare -A ht
ht=(
    ["syncdir"]="Path to directory of syncing"
    ["target"]="Path to directory where backup will be stored"
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


function syncdir () {
    # set the sync dir
    SYNC_DIR=$1
}


function target (){
    # set the target dir
    TARGET=$1
}



function create_bckpdir(){
    if [[ -d "$TARGET" ]]
    then
        echo "Target directory $TARGET exists. Do not crete"
    else
        mkdir $TARGET
    fi

    BCKP_DIR=$TARGET/bckp-$(date +%F)

    if [[ -d "$BCKP_DIR" ]]
    then
        echo "Backup directory $BCKP_DIR exists. Do not create."
    else
        BCKP_DIR=$TARGET/bckp-$(date +%F)/
        mkdir $BCKP_DIR
    fi
}


function get_files() {
    echo "Get filse from $SYNC_DIR"
    FILES=$(ls -F $SYNC_DIR | grep -v /) 
    echo "Get files from $BCKP_DIR"
    OLD_FILES=$(ls -F $BCKP_DIR | grep -v /)
}


function update_file(){
    
    local BCKP_F=$(cat $BCKP_DIR/$1 | md5sum)
    local SYNC_F=$(cat $SYNC_DIR/$1 | md5sum)
    if [[ $BCKP_F == $SYNC_F ]]
    then
        echo "File  $1 not required to update"
    else
        log "update" $1
        cp $SYNC_DIR/$1 $BCKP_DIR/$1
    fi
}


function copy_file(){
    log "add" $1
    cp $SYNC_DIR/$1 $BCKP_DIR/$1
}


function del_file() {
    log "remove" $1
    rm $BCKP_DIR/$1
}



function syncfile (){
    for i in $FILES
    do
        if [[ -f "$BCKP_DIR/$i" ]]
        then
            update_file $i
        else
            copy_file $i
        fi
    done
    
    for i in $OLD_FILES
    do
        if [[ -f "$SYNC_DIR/$i" ]]
        then
            echo "Ok. File $i synced"
        else
            del_file $i
        fi    
    done
    
}


function syncbckp (){
    create_bckpdir
    get_files
    syncfile
}



function log () {
    # time | operation type | filename
    echo "$(date) | $1 | $2"  >> /var/log/${0/".sh"/".log"}
    echo "$(date) | $1 | $2"
}



function main (){
    # main script here
    echo "Target is $TARGET"
    echo "Sync dir is $SYNC_DIR"
    syncbckp
}


if (($#))
then 
    # parcig command
    if [[ ${1:0:2} == "--" ]]
	then
	    # running function fist must bu the syncdir
        ${1/"--"/""} $2
        ${3/"--"/""} $4
        main
    fi
else
    # script do not recive any args
    # just show info about command
    for key in "${!ht[@]}"
    do
        display "$key" "${ht[$key]}"
    done
fi

# End of script

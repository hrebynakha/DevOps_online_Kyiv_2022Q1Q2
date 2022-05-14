#!/bin/bash

# configuration
declare -A ht
ht=(
    ["most IP"]="Displays the  which ip the most requests"
    ["most Page"]="Display the most request page"
    ["count IP"]="Dispaly information about IP count request"
    ["get 404"]="Dispaly information about non-exist page request"
    ["most time"]="Dispaly most time period site get requests"
    ["get bot"]="Display search bot information"
)

LOGS=$(cat /var/log/apache2/access.log)


# functions


function display () {
    # echo information about
    # 1 is key 
    # 2 is a desription
    echo "Usage: --$1" 
    echo "Description: $2"
}


function most () {
    echo "Searching for more $1 request ..."
    if [[ $1 == "IP" ]]
    then
	echo "$LOGS" | awk '{print $1}' | sort -nr | uniq -c | sort -nr | head -n 1 | awk '{
            print "The most request from IP: ",$2," count of request: ",$1 
        }'
    elif [[ $1 == "Page" ]]
        then
          echo "$LOGS" | awk '{
            if ($6 != "\"-\"")
                print $7
            }' | sort -nr | uniq -c | sort -nr | head -n 1 | awk '{
                    print "The most request page is (",$2,") .Count of request", $1
                }'
    elif [[ $1 ==  "time" ]]
    then
       echo "$LOGS" | awk '{
           print substr($4,14,2)
        }' | sort -nr | uniq -c | sort -nr | head -n 1 | awk  '{
                print "The most reques time (hour) is:",$2, ".Count of request",$1
            }'
    fi
}


function count () {
    echo "$LOGS" | awk -v group=$1 '{
        if (group="IP")
            print $1
        }' | sort -nr | uniq -c | sort -nr | head -n 25 | awk '{
                print "Most request from IP ",$2,".Count of request", $1
            }'
}



function get () {
    # 1 is a parmaetr to show
    echo -e "Searching for type $1"
    echo "$LOGS" | awk -v code=$1 '{
       if ($9==code)
           if (code=='404')
	       print "Page:",$7," not found.Client requested IP",$1
           if (code=='200')
               print "Page:", $7 " suucess found.Client requested IP",$1		   
     
     }'

}



if (($#))
then 
    # parcig command
    while (($#))
    do
	if [[ ${1:0:1} == "-" ]]
	then
		${1/"--"/""} $2 
	fi
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

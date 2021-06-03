#!/bin/bash  
echo Hello
for ARGUMENT in "$@"
do

    KEY=$(echo $ARGUMENT | cut -f1 -d=)
    VALUE=$(echo $ARGUMENT | cut -f2 -d=)   

    case "$KEY" in
            name)              name=${VALUE} ;;
            age)    age=${VALUE} ;;     
            *)   
    esac    


done

echo "name = $name"
echo "age = $age"
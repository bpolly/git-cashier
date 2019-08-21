#!/bin/bash

# set -x
git_branches(){
    git for-each-ref --count=5 --sort=-committerdate refs/heads/ --format='%(refname:short)'
}

title="Select example"
prompt="Pick an option:"
# options=("A" "B" "C")
# options=$(echo "$(git for-each-ref --count=5 --sort=-committerdate refs/heads/ --format='%(refname:short)')
# options=$(echo $(gb) | for ELEMENT in $(xargs); do echo File: $ELEMENT.;done)
options=$(echo "$(git_branches)")
echo "$title"
PS3="$prompt "
select opt in $(git_branches) "Quit"; do 

    case "$REPLY" in

    1 )
        # echo "You picked $opt which is option $REPLY";
        echo "Checking out branch $opt";
        $(git checkout "$opt");
        break;;
    2 ) 
        # echo "You picked $opt which is option $REPLY";
        echo "Checking out branch $opt";
        $(git checkout "$opt");
        break;;
    3 ) 
        echo "You picked $opt which is option $REPLY";
        break;;
    4 ) 
        echo "You picked $opt which is option $REPLY";
        break;;
    5 ) 
        echo "You picked $opt which is option $REPLY";
        break;;

    $(( ${#options[@]}+1 )) ) 
        echo "Goodbye!"; break;;
    *) 
        echo "Invalid option. Try another one.";continue;;

    esac

done

# select opt in "${options[@]}" "Quit"; do 

#     case "$REPLY" in

#     1 ) echo "You picked $opt which is option $REPLY";;
#     2 ) echo "You picked $opt which is option $REPLY";;
#     3 ) echo "You picked $opt which is option $REPLY";;

#     $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
#     *) echo "Invalid option. Try another one.";continue;;

#     esac

# done

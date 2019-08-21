#!/bin/sh
# set -x

git_branches(){
    git for-each-ref --count=5 --sort=-committerdate refs/heads/ --format='%(refname:short)'
}

title="=== Most Recent Git Branches ==="
prompt="Choose a branch:"
echo "$title"
PS3="$prompt "
select opt in $(git_branches) "Quit"; do 

    case "$REPLY" in

    1 )
        # echo "You picked $opt which is option $REPLY";
        (git checkout "$opt");
        break;;
    2 ) 
        # echo "You picked $opt which is option $REPLY";
        (git checkout "$opt");
        break;;
    3 ) 
        (git checkout "$opt");
        break;;
    4 ) 
        (git checkout "$opt");
        break;;
    5 ) 
        (git checkout "$opt");
        break;;

    $(( ${#options[@]}+1 )) ) 
        echo "Goodbye!"; break;;
    *) 
        echo "Invalid option. Try another one.";continue;;

    esac

done


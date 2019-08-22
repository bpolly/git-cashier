#!/bin/sh

# Number of branches to list
branch_count=5

# Fetch branch names
git_branches(){
    git for-each-ref --count=$branch_count --sort=-committerdate refs/heads/ --format='%(refname:short)'
}

title="=== Most Recent Git Branches ==="
prompt="Choose a branch:"
echo "$title"
PS3="$prompt "
select opt in $(git_branches); do 

    if [ "$REPLY" -ge 1 ] && [ "$REPLY" -le $branch_count ]; then
        (git checkout "$opt");
        break
    else
        echo "Invalid option.";
        continue
    fi
done


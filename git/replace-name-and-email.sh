#!/bin/bash

if [ $# != 3 ]; then
    echo "Usage: replace-name-and-email.sh [old email] [new email] [new name]"
    exit 1
fi

old_email=$1
new_email=$2
new_name=$3

export FILTER_BRANCH_SQUELCH_WARNING=1

git filter-branch --env-filter "
if [ \"\$GIT_COMMITTER_EMAIL\" = \"$old_email\" ]; then
    export GIT_COMMITTER_EMAIL=\"$new_email\"
    export GIT_COMMITTER_NAME=\"$new_name\"
fi
if [ \"\$GIT_AUTHOR_EMAIL\" = \"$old_email\" ]; then
    export GIT_AUTHOR_EMAIL=\"$new_email\"
    export GIT_AUTHOR_NAME=\"$new_name\"
fi
" --tag-name-filter cat -- --branches --tags

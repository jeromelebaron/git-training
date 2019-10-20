#!/bin/bash

commits=$(git log --pretty=oneline)
fixup_commits=$(git log --pretty=oneline | grep 'fixup' | cut -d\  -f 3-)

while IFS= read line; do echo "LINE: '${line}'"; done

for commit in $commits; do
    echo "$commit"
done

echo "$commits"
echo "$fixup_commits"

exit 0
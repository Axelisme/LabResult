# Create a temp orphan branch
git checkout --orphan temp_orphan
git add -A
git commit -am "Last Update time: $(date '+%Y/%m/%d - %H:%M:%S')"

# replace main branch with temp orphan branch
git branch -D main
git branch -m main

# push changes to remote
git push -f origin main

# delete orphan commit
git gc --prune=now --aggressive
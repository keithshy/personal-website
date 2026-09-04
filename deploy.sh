#!/usr/bin/bash
set -e

current_branch=$(git branch --show-current)
if [[ "$current_branch" != "deploy" ]]; then
    echo "Must be run on `deploy` branch only."
    exit 1
fi

git merge main
rm -f dist/*
npm run build
git add -f dist/
git commit -m "Deployment"
git push -u prod deploy --force

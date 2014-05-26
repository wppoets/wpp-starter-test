#!/bin/sh
echo "removing all files and directories except for .git and this script.."
find . -maxdepth 1 -not -name ".git" -not -name "clear_reset_hard.sh" -not -name "." -exec rm -rf {} \;
find ./.git/modules/* -maxdepth 1 -exec rm -rf {} \;
git reset --hard
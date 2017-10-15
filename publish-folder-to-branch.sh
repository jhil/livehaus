#!/bin/bash
# Publish a particular folder to a particular git branch - for instance,
# 
# $ ./publish-folder-to-branch dist gh-pages
# 
# will publish the /dist folder to the gh-pages branch (say, for publishing your static site)

foldername=$1
branchname=$2

if [ -z $1 ] || [ -z $2 ]; then
	echo "I need a folder to push and a branch name to push it to"
	exit 1
fi

set -x
git subtree push --prefix $foldername origin $branchname

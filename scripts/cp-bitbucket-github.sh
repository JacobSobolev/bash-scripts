#!/bin/bash

########################################
# Migrating a git repo from bitbucket to GitHub
# -----------------------------------
# The tool uses git, github cli. make sure to install them
# change the variables repoName, bitbucketUser, githubUser to your variables
# The first time you run it, you will need to authenticate with bitbucket and GitHub
# Cahnge githubVisibility to public if you want your repo to be public on GitHub
########################################

repoName=myRepo
bitbucketUser=userName1
githubUser=userName2
githubVisibility=private 

git clone "https://$bitbucketUser@bitbucket.org/$bitbucketUser/$repoName.git"

cd $repoName
git remote set-url --push origin https://github.com/$githubUser/$repoName
gh repo create $repoName --$githubVisibility

git push

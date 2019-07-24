#!/bin/bash

#Take directory input
echo Please input a directory...
read folder

#Take username input
echo Please input a username...
read localuser

#Configure global user details on local host
git config --global user.name "Bryan Kwok"
git config --global user.email "bkwokzj@hotmail.com"

#Initialize git directory
cd /home/$localuser/$folder
git init

#Set up GitHub repo
echo Add a Git repo URL. When logging into GitHub, if using MFA, please ensure to use the personal access token as the password which
is generated in the account settings.
read reponame
git remote add origin $reponame

#Input first git file into repo
touch README.md
echo This is the README for this git repo > README.md
git add /home/$localuser/$folder/

#Commit all files to Git repo
echo Please add a commit comment...
read comment
git commit -m "$comment"

#Push to git repo
git push -u origin master

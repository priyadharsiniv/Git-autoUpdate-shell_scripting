#!/bin/bash

REPO_NAME="git-repo"
USERNAME="git-username"
PASSWORD="git-password"
USER="server-username"
IP="server-ip"
FOLDER="server-project-folder"
PEM_PATH="pem path"

#git add all files

echo "*****git add begins*****"
git add . 
echo "*****git add ends*****"



#commit files to git

echo "*****git commit begins*****"
git commit -m "Auto commit from shell scripting"
echo "*****git commit ends*****"


#pull code to git

echo "*****git pull begins*****"
git pull https://$USERNAME:$PASSWORD@github.com/$REPO_NAME
echo "*****git pull ends*****"


#push code to git
echo "*****git push begins*****"
git push https://$USERNAME:$PASSWORD@github.com/$REPO_NAME --all
echo "*****git push ends*****"


#pull code from git in server

echo "*****git pull in server begins*****"
ssh -i $PEM_PATH $USER@$IP "cd $FOLDER; git pull https://$USERNAME:$PASSWORD@github.com/"$REPO_NAME
echo "*****git pull in server ends*****"



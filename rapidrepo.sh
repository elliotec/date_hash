#!/bin/bash
 
#Replace the below if you don't want to be prompted for credentials
USERNAME="elliotec"
PASSWORD="Tr!k1tr33^"
 
 
if [ "$USERNAME" == "" ]; then
  echo -n "Enter your Github username and press [ENTER]: "
  read USERNAME
fi
 
echo -n "Enter a project name for your new Github repository and press [ENTER]: "
read REPO
 
if [ "$PASSWORD" != "" ]; then
  CREDSHASH=$USERNAME":"$PASSWORD
else
  CREDSHASH=$USERNAME
fi
 
REPOHASH='{"name":"'$REPO'"}'
 
echo "contacting Github API..."
curl -u $USERNAME https://api.github.com/user/repos -d $REPOHASH > /dev/null
 
echo "making local repo..."
if [ ! -d ".git" ]; then
  git init
  git add -A .
  git commit -m "Initial commit"
fi
 
echo "adding remote..."
git remote add origin git@github.com:$USERNAME/$REPO.git
git push -u origin master

#!/bin/bash

setnewrepo () {

#credentials for curl communications (get your token from https://github.com/settings/tokens)
local username=YOUR_GITHUB_USERNAME
local gittoken=YOUR_GITHUB_TOKEN

#making the repo private (set to false if you want to make it public by default)
local privacy=true

#navigating to a folder where you store your projects
cd ~/my_projects/

#creating the repo
curl -u "$username:$gittoken" https://api.github.com/user/repos -d "{\"name\":\"$1\", \"private\":\"$privacy\"}"
git clone https://github.com/$username/$1.git

#navigating inside the repo
cd $1/

#creating README.md file
cat >README.md <<EOL
# $1
## To do list:

- [x] create the repository
- [x] create and upload README.md template 
EOL

#uploading the file

git add --all
git commit -m "first commit and uploading the README.md file"
git push

#if you want you can open it in your favorite text editor, just uncomment line below
#subl README.md

}
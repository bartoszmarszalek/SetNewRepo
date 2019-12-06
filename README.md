
# SetNewRepo
Setting a new repository in github with just one command

## How to use it:
once it's set up just open a terminal and:

```
setnewrepo NewRepoName
```

You are going to be rediricted to the folder of the repository. You can specify:
- the path that you store your projects in, 
- if the repository will be created private or public, 
- the template of the README.md file, 
- and whatever else you want when you edit the **setnewrepo.sh** file

## How to set it up?
1. install git and curl:

```
sudo apt install git
sudo apt install curl
```

2. Setup git - it is going to make your life easier so you don't need to input it every time
```
git config --global user.name "YOUR_GITHUB_USERNAME"
git config --global user.email youremailadress@somewhere.com
```
It is also possible to store your password this way, but it is ultimately your decision.

3. Setup a bash script with your custom function (the **setnewrepo.sh** file contains the function you'd like to use in it)

- copy/move **setnewrepo.sh** to your location of choice
- add execution priviledges `chmod +x setnewrepo.sh`
- change directory to your home: `cd ~/`
- open the **.bashrc** file using your editor of choice for example: `subl .bashrc`
- add new line: `source ~/pathToTheFile/setnewrepo.sh` (this will make the function available in the terminal every time you open terminal window)
- save **.bash.rc**

4. Edit setnewrepo.sh:

- replace YOUR_GITHUB_USERNAME with your user name
- replace YOUR_GITHUB_TOKEN with token from github. Find it [here](https://github.com/settings/tokens)
- change the default path to where you store your projects
- you can also change the way repositories are created (pivate if you leave it as is or public, if you change this part `publicity=true`)
- you can change the README.md template or even not create the file at all
- you can open the README.md file in sublime or your own editor of choice
- of course you can change the function name 
- save changes

5. Restart the terminal

## To do list:

- [x] create the repository
- [x] create and upload README.md template 
- [x] create a repo using bash/command cURL 
- [x] clone the just created repo
- [x] navigate into it
- [x] create a README.md file with a To do list
- [x] upload it to gihub
- [x] open README.md for editing
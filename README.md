This is my dotfiles for linux operating system</br> 
To make your own follow the steps below

# Configuring a bare git repo

```
mkdir <name of the directory>
cd <name of the directory>
git init --bare
```

Or alternatively if you would like you can create the directory when making the git bare repos at the same time </br> 

```
git init --bare $HOME/<name of the directory>
```

## Then add this alias to your .bashrc/.zshrc file or whatever shell you are using 

```
alias <alias name>="/usr/bin/git git --git-dir=$HOME/<name of the director you created> --work-tree=$HOME"
```

Now set show untracked files to false

```
<alias name> config --local status.showUntrackedFiles no
```

# Adding, commit and push file to the repo

```
<alias name> add <name of the file>
<alias name> commit -m "<message>"
<alias name> push
```

## Note: before pushing to the repo
You may need to link the repo first to the bare git repo

```
# This would push and link the git repo
<alias name> push --set-upstream <url>
```
Alternative, (this is probably the best way to link the repo)
```
# most people use origin for <name>
<alias name> remote add <name> <url> 
```

# Setting up in a new machine
Just go to this link: https://www.atlassian.com/git/tutorials/dotfiles










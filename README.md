This is my dotfiles for linux operating system</br> 
To make your own follow the steps below

# Configuring a bare git repo

```bash
mkdir <name of the directory>
cd <name of the directory>
git init --bare
```

Or alternatively if you would like you can create the directory when making the git bare repos at the same time </br> 

```bash
git init --bare $HOME/<name of the directory>
```

## Then add this alias to your .bashrc/.zshrc file or whatever shell you are using 

```bash
alias <alias name>="/usr/bin/git git --git-dir=$HOME/<name of the directory you created> --work-tree=$HOME"
```

Now set show untracked files to false since we only want git to track the file we explicitly added otherwise it will show a list of untracked files under the work tree $HOME.

```bash
<alias name> config --local status.showUntrackedFiles no
```

# Adding, commit and push file to the repo

```
<alias name> add <name of the file>
<alias name> commit -m "<message>"
<alias name> push
```

## Note: before pushing to the repo
A link to a remote repo from your git bare repo is needed for pushing. If so, 

```bash
# This would push and link the git repo
<alias name> push -u <remote url> <default branch name>

# To add and push separately
<alias name> remote add origin <remote url>  # to only add
<alias name> push -u origin <default branch name> # to push
```

# Setting up in a new machine

On a new machine configure 










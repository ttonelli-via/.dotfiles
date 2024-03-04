TODO: use this on work computer and record down the steps to get this
up and running.

Anticipating something like the following:

```shell copy
# if stow not installed
brew install stow

# clone down the repo into home dir
git clone git@<repo-url> ~/.dotfiles`

# change directory into repo
cd ~/.dotfiles

# make backups of everything, then adopt config files
stow --adopt .

# resolve diffs, and make a new branch if necessary, then dry run
# to make sure everything looks good
stow -n -v .

# do it for real
stow .
```

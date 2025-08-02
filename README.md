## Installation

If you have git installed and you have your ssh key uploaded to github, clone the repo to your home directory

```
git clone git@github.com:bartosz-bear/.dotfiles.git ~
```

Create a local branch which corresponds to your username and host.

```
cd ~/.dotfiles
git checkout -b "$(whoami)@(hostname)"
```

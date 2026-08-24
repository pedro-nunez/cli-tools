#!/bin/bash

push() {
  # Push local changes on a repository to GitHub using
  # One should call this function from the folder containing the repository's folder
  # First argument is the name of the repository
  # If no arguments, then obsidian-vault will be the default repository
  # Remaining arguments are used as a commit message
  # If at most one argument, "Some updates" will be the default commit message
  if [ $# = 0 ]
  then
    cd "${HOME}/git/obsidian-vault"
    git add .
    git commit -m "Some updates"
    git push
    cd
  elif [ $# = 1 ]
  then
    cd "${1}"
    git add .
    git commit -m "Some updates"
    git push
    cd ..
  else
    cd "${1}"
    git add .
    git commit -m "${*:2}"
    git push
    cd ..    
  fi
}

pull() {
  # Pull changes from GitHub to your local folder
  # First argument is the name of the repository
  # If no arguments, then obsidian-vault will be the default repository
  if [ $# = 0 ]
  then
    cd "${HOME}/git/obsidian-vault"
    git pull
    cd
  else
    cd "${1}"
    git pull
    cd ..
  fi
}

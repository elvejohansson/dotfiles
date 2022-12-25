# Dotfiles

These are my dotfiles for all my configured applications and tools that I run on Linux.

## Setup

A few things about my setup; I want it to be as powerful as possible, but at the same time be as minimal and portable as possible.

I used to use a bare Git-repo in my home folder, but this got very cluttered very fast, so I started looking for a better solution. This version uses the GNU Stow utility to "stow" all of my files in this repo to my home folder, which is why the folder structure is a bit wonky. This gives me the power to choose exactly how I want my folder to look, but I can seperate it to another folder and version control it. This also means that I or any other person can clone this repo and pick and choose exactly which config's they want to use: win-win!

## Install

A quick install guide:
1. Clone this repo into your home folder!! (Very important, makes it so that Stow just works out of the box)
2. Install the GNU Stow utility if you haven't already. Should be in the core repository for your distro (eg. `sudo pacman -S stow`).
3. CD into the folder and run `stow */`. This will stow all the folders to your home directory. You can also pick just some, for example `stow zsh/`.
4. That's it!


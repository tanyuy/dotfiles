# dotfiles

## Installation

1. Generate SSH key and add to Github
2. Clone `dotfiles` repo and run `setup.sh`

```bash
mkdir $HOME/Repos && cd Repos
git clone git@github.com:tanyuy/dotfiles.git && cd dotfiles && ./setup.sh
```

## Manually Install Additional Apps
These apps did either not have a cask on brew or recommended an alternate installation method.
- [BetterSnapTool](https://apps.apple.com/us/app/bettersnaptool/id417375580?mt=12)
  - App to create keyboard shortcuts to snap windows. Download from App store.
- [R](https://cran.r-project.org/bin/macosx/)
  - Documentation recommended to not use brew and download directly from CRAN.

## Resources
- [dotfiles](https://github.com/zellwk/dotfiles) by zellwk. My setup framework is primarily based off of this with my custom installation.
- [awesome-dotfiles](https://github.com/webpro/awesome-dotfiles) by Lars Kappert. Amazing curated list of dotfiles and resources
- Mathias Bynen's MacOS [documentation](https://github.com/mathiasbynens/dotfiles/blob/main/.macos)

## To Do List
- Automate python virtual environment setup, install jupyterlab, install core packages
- [Oh-my-zsh](https://ohmyz.sh/) setup
  - Configure iterm2
- Add MacOS setup
- [Atom](https://atom.io/) setup
  - Download packages (minimap, spellcheck, markdown preview, etc)

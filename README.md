# dotfiles

My dotfiles

# Usage

- Cleanup Dock
defaults write com.apple.dock "persistent-apps" -array;
killall Dock;

- install homebrew 
- add homebrew to zprofile 
- Run these two commands in your terminal to add Homebrew to your PATH:
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/lucas/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- clone dotfiles 
- softwareupdate --install --all --verbose
- install stow 
- stow 

brew bundle --file=/path/to/your/Brewfile

# Side refs

https://github.com/dreamsofautonomy/dotfiles
https://github.com/zero-sh/zero.sh
https://github.com/holman/dotfiles
https://github.com/msanders/setup/blob/master/CHECKLIST.md

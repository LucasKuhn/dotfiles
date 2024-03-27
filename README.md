# dotfiles

My dotfiles + Brewfiles

# Fresh macbook setup

### 1. Check if the formulas and casks in the `Brewfile` still make sense

### 2. Check the commands under the `Makefile`


### 3. Either run everything with 
```sh
make all
```
Or run each command as needed
```sh
make softwareupdate
make homebrew
...
```
# Install languages using ASDF 

Golang
```sh
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf install golang latest
```

Ruby 
```sh
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest
```



## Dotfile ref

- https://github.com/dreamsofautonomy/dotfiles
- https://github.com/zero-sh/zero.sh
- https://github.com/holman/dotfiles
- https://github.com/msanders/setup/blob/master/CHECKLIST.md

## Custom prompt ref 
- https://stackoverflow.com/questions/66128326/how-to-fix-custom-terminal-prompt-with-export-ps1-w-clear-that-becomes
- https://gist.github.com/reinvanoyen/05bcfe95ca9cb5041a4eafd29309ff29
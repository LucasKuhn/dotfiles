# dotfiles

My dotfiles + Brewfiles

# Usage

The makefile is supposed to be run after a fresh install of MacOS.

Update the OS:
```sh
make softwareupdate
```

Install homebrew, and all homebrew casks and formulas described in the `Brewfile`:
```sh
make brew_install
```

Remove everything that is pinned on the dock:
```sh
make dock_cleanup
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



# Side refs

https://github.com/dreamsofautonomy/dotfiles
https://github.com/zero-sh/zero.sh
https://github.com/holman/dotfiles
https://github.com/msanders/setup/blob/master/CHECKLIST.md

## Custom prompt ref 
- https://stackoverflow.com/questions/66128326/how-to-fix-custom-terminal-prompt-with-export-ps1-w-clear-that-becomes
- https://gist.github.com/reinvanoyen/05bcfe95ca9cb5041a4eafd29309ff29
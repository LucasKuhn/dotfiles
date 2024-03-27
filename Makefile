all: softwareupdate homebrew dotfiles resetdock speedupkeyboard

softwareupdate:
	@echo "Running software updates..."
	softwareupdate --install --all --verbose

homebrew:
	@echo "Checking for Homebrew..."
	@if ! command -v brew >/dev/null; then \
		echo "Homebrew not found - Attempting to install..."; \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi
	@echo "Running brew bundle..."
	brew bundle --file=./Brewfile

dotfiles:
	@echo "Linking dotfiles to $(HOME)..."
	stow . --target=$(HOME) --verbose=2

update:
	brew update
	brew upgrade
	brew cleanup
	brew doctor

resetdock:
	@echo "Removing all persistent apps from the Dock..."
	defaults write com.apple.dock "persistent-apps" -array; killall Dock;

speedupkeyboard:
	@echo "Increasing key repeat rate..."
	defaults write -g KeyRepeat -int 2 
	@echo "Setting a shorter delay until key repeat..."
	defaults write -g InitialKeyRepeat -int 12
	@echo "Disabling press-and-hold for keys in favor of key repeat..."
	defaults write -g ApplePressAndHoldEnabled -bool false


.PHONY: all softwareupdate homebrew dotfiles resetdock speedupkeyboard
all: softwareupdate homebrew dotfiles resetdock

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

resetdock:
	@echo "Removing all persistent apps from the Dock..."
	defaults write com.apple.dock "persistent-apps" -array; killall Dock;

.PHONY: all softwareupdate homebrew dotfiles resetdock
all: softwareupdate homebrew dotfiles resetdock speedupkeyboard hushlogin

softwareupdate:
	@echo "Running software updates..."
	softwareupdate --install --all --verbose

homebrew:
	@echo "Checking for Homebrew..."
	@if ! command -v brew >/dev/null; then \
		echo "Homebrew not found - Attempting to install..."; \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi
	eval "$$(/opt/homebrew/bin/brew shellenv)"
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

app_switcher_on_all_displays:
	@echo "Setting app switcher to show on all displays..."
	defaults write com.apple.dock appswitcher-all-displays -bool true; killall Dock;

setup_global_gitignore:
	@echo "Configuring git to use global .gitignore..."
	@if [ -z "$$(git config --get core.excludesfile)" ]; then \
		git config --global core.excludesfile ~/.gitignore_global; \
	fi

speedupkeyboard:
	@echo "Increasing key repeat rate..."
	defaults write -g KeyRepeat -int 2
	@echo "Setting a shorter delay until key repeat..."
	defaults write -g InitialKeyRepeat -int 12
	@echo "Disabling press-and-hold for keys in favor of key repeat..."
	defaults write -g ApplePressAndHoldEnabled -bool false

hushlogin:
	@echo "Suppressing last login message..."
	touch $(HOME)/.hushlogin


.PHONY: all softwareupdate homebrew dotfiles resetdock speedupkeyboard hushlogin
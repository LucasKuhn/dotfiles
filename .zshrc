# .zshrc is loaded only for interactive shells.
# It should contain commands to set up aliases, custom prompt, functions, scripts, key bindings.

# -- Aliases
alias dots='zed ~/dotfiles'
alias yc="claude --dangerously-skip-permissions"
alias yca="claude agents --dangerously-skip-permissions"


# --- Folders
alias dev="cd ~/Developer"
alias up='cd ..'
alias pairing='cd ~/Developer/date-restriction-exercise'

# --- Apps
alias c="cursor"
alias z="zed"

# --- Listing
alias l='ls -CF'
alias ll='ls -l'
alias lla='ls -la'
alias la='ls -A'
alias dush='du -sh * | sort -h'

# --- Rails
alias be='bundle exec'
alias rof='bundle exec rspec --only-failures'
export RAILS_EDITOR="zed"

# --- Git
# export GIT_EDITOR="vim"
alias gco='git checkout'
alias gitmain='git checkout main && git pull'
alias gitmaster='git checkout master && git pull'
alias gitlog='git log --oneline --graph --decorate --all'
alias gitoops='git reset HEAD~ --soft'
alias gitbranchclean='git branch | grep -v butler | grep -v main | xargs git branch -D'
alias gitundo='git reset --hard HEAD~1'
alias please="git push --force-with-lease origin HEAD"
# -- (in progress) --
# alias uncommit='git reset --soft main'
# fixup
# rebase interactive
# reorder
# ammend
# git log --oneline
# git rebase --onto origin/main 9bfc0d42
# git reset --soft main
# git add . ; git commit --fixup f4f000159d48108fdf96ce2f130f431cbf08a6bd
# git rebase -i --autosquash f4f000159d48108fdf96ce2f130f431cbf08a6bd~1

# Global gitignore
alias gitignoreinfo="git config --get core.excludesfile"

# --- Magic fix
# git reflog
# git checkout <commit> -- <filepath>

# -- Claude code
alias ccusage="bunx ccusage"
alias ccup="HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade claude-code@latest"


# -- Kompass specific
alias specfast="bundle exec rspec --tag ~type:system --tag ~speed:slow"

# -- Homebrew update and cleanup
alias brewup="brew update && brew upgrade && brew cleanup && brew doctor"

# -- Mise
eval "$(mise activate zsh)"

# -- Direnv
eval "$(direnv hook zsh)"

# -- Atuin
eval "$(atuin init zsh)"

# -- Colored ls output
export CLICOLOR=1

# -- Better default PROMPT
# PROMPT='%(?.%F{green}Azam.%F{blue}?%?)%f %B%F{240}%0~%f%b %#'
# PROMPT='%F{green}%n%f@%F{blue}%m%f %F{yellow}%~%f %F{red}%#%f '
# PROMPT='%F{gray}%~%f %F{green}>%f '

# -- Starship prompt
eval "$(starship init zsh)"

# -- Spaceship prompt
# source $(brew --prefix)/opt/spaceship/spaceship.zsh

# [[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# -- Zsh Syntax Highlighting
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Added by Antigravity
export PATH="/Users/lucas/.antigravity/antigravity/bin:$PATH"

# Amp CLI
export PATH="/Users/lucas/.amp/bin:$PATH"

# PSQL
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

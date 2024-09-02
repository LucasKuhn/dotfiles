# .zshrc is loaded only for interactive shells. 
# It should contain commands to set up aliases, custom prompt, functions, scripts, key bindings.

# -- Aliases
alias dev="cd ~/Developer"
alias nw="cd ~/Developer/Nordweg"
alias up='cd ..'
alias l='ls -CF'
alias ll='ls -l'
alias lla='ls -la'
alias la='ls -A'
alias dush='du -sh * | sort -h'

# -- Mise 
eval "$(mise activate zsh)"

# -- Direnv 
eval "$(direnv hook zsh)"

# -- Colored ls output
export CLICOLOR=1
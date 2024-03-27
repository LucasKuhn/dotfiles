# .zshrc is loaded only for interactive shells. 
# It should contain commands to set up aliases, custom prompt, functions, scripts, key bindings.

# -- Aliases
alias nw="cd ~/Developer/Nordweg"
alias l='ls -CF'
alias ll='ls -l'
alias lla='ls -la'
alias la='ls -A'

# -- Bun completions
[ -s "/Users/lucas/.bun/_bun" ] && source "/Users/lucas/.bun/_bun"

# -- Enable color support
export CLICOLOR=1

# -- Custom prompt
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_DIR=$'%F{005}'
COLOR_GIT=$'%F{075}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%1~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

# -- Homebrew completions ( Disabled because is slows down startup )
# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
#   autoload -Uz compinit
#   compinit
# fi




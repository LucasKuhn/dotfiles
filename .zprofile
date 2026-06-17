# .zprofile is loaded for login shells (both interactive and the rare non-interactive sessions)
# Use it to set PATH and EDITOR variables

# -- homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"

# -- libpg ( used by postgres )
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"


# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

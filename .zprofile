# .zprofile is loaded for login shells (both interactive and the rare non-interactive sessions)
# Use it to set PATH and EDITOR variables

# -- homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"

# -- asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# -- bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# libpg ( used by postgres )
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# postgres
export LDFLAGS="-L/opt/homebrew/opt/postgresql@16/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@16/include"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
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


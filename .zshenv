# Codex runs non-login, non-interactive zsh; .zprofile/.zshrc are skipped.
# Keep this narrow: only adjust PATH when running inside Codex.
if [[ -n "${CODEX_SHELL:-}" ]] && [[ -d "$HOME/.local/share/mise/shims" ]]; then
  if [[ ":$PATH:" != *":$HOME/.local/share/mise/shims:"* ]]; then
    export PATH="$HOME/.local/share/mise/shims:$PATH"
  fi
fi
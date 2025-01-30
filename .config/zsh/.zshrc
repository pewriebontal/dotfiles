# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source configuration files
test -s "${HOME}/.config/env" && . "${HOME}/.config/env" || true
source "${HOME}/.config/sources"

# Shell options
setopt autocd
setopt interactive_comments  # Allow comments in interactive shells
setopt append_history        # Don't overwrite history
setopt extended_history      # Save timestamp
setopt hist_expire_dups_first
setopt hist_ignore_space     # Ignore commands with leading space
setopt hist_verify           # Show history expansion before executing
setopt inc_append_history    # Add commands as they are typed
setopt share_history         # Share history between sessions

# Completion system
autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Case insensitive matching
zstyle ':completion:*' menu select                        # Menu selection
zstyle ':completion:*' use-cache on                       # Use cache for completion
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompcache"

# Load powerlevel10k
if [[ -f "${HOME}/.config/zsh/p10k.zsh" ]]; then
    source "${HOME}/.config/zsh/p10k.zsh"
    typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
fi

# Keybindings
bindkey '^[[1;5C' forward-word       # Ctrl + Right
bindkey '^[[1;5D' backward-word      # Ctrl + Left

# Display fortune
if command -v fortune >/dev/null && command -v cowsay >/dev/null; then
    fortune | cowsay
fi

# Initialize zoxide
if command -v zoxide >/dev/null; then
    eval "$(zoxide init zsh)"
fi

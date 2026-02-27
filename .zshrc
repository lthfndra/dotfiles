export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

alias cd="z"

# JAVA & ANDROID PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH="$JAVA_HOME/bin:$PATH"

# --- ANDROID SDK CONFIG (FIXED) ---
export ANDROID_HOME="$HOME/android-sdk"
# Baris ini yang memperbaiki error "Cannot find AVD system path":
export ANDROID_SDK_ROOT="$ANDROID_HOME"

# Menambahkan tools ke PATH
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
fpath+=/opt/homebrew/share/zsh/site-functions

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Added by Antigravity
export PATH="/Users/lthfndra/.antigravity/antigravity/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$WASMTIME_HOME/bin:$PATH"

# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# ccache
export PATH=/opt/homebrew/opt/ccache/libexec:$PATH

# Rust
export PATH=~/.cargo/bin:$PATH

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

autoload -Uz compinit && compinit

eval "$(zellij setup --generate-auto-start zsh)"

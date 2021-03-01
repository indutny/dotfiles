# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# ccache
export PATH=/opt/homebrew/opt/ccache/libexec:$PATH

# Node
# export PATH=~/.node/12.13.0/bin:$PATH
# export PATH=~/.node/12.20.1/bin:$PATH
# export PATH=~/.node/14.15.4/bin:$PATH
# export PATH=~/.node/15.7.0/bin:$PATH
export PATH=~/.node/15.10.0/bin:$PATH

# Elixir
export PATH=~/.mix/escripts:$PATH

# Rust
export PATH=~/.cargo/bin:$PATH

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

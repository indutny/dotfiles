export PROMPT_COMMAND=__prompt_command
HISTSIZE=1000000
HISTFILESIZE=20000000

__prompt_command() {
  local STATUS="$?"

  if [ $STATUS != 0 ]; then
    PS1="\w \[\e[0;31m\]$\[\e[0m\] "
  else
    PS1="\w $ "
  fi
}

# ccache
export PATH="/usr/local/opt/ccache/libexec:$PATH"

# c and various
export PATH="$PATH:/Users/findutnyy/.bin"

# google depot tools
export PATH="$PATH:/Users/findutnyy/Code/google/depot_tools"

# brew
export PATH="/usr/local/bin:$PATH"

# arcanist
export PATH="$PATH:/Users/findutnyy/Code/phacility/arcanist/bin/"

# gpg-2.1.0
# export PATH="/Users/findutnyy/.gnupg/2.1.0/bin/:$PATH"

# io
#export PATH="$HOME/.iojs/2.3.4/bin:$PATH"
#export PATH="$HOME/.node/0.10.39/bin:$PATH"
#export PATH="$HOME/.node/0.12.14/bin:$PATH"
#export PATH="$HOME/.node/4.8.4/bin:$PATH"
#export PATH="$HOME/.node/5.7.0/bin:$PATH"
#export PATH="$HOME/.node/6.8.0/bin:$PATH"
#export PATH="$HOME/.node/7.7.1/bin:$PATH"
#export PATH="$HOME/.node/8.9.1/bin:$PATH"
#export PATH="$HOME/.node/9.5.0/bin:$PATH"
#export PATH="$HOME/.node/9.8.0/bin:$PATH"
#export PATH="$HOME/.node/10.10.0/bin:$PATH"
#export PATH="$HOME/.node/11.7.0/bin:$PATH"
#export PATH="$HOME/.node/8.15.1/bin:$PATH"
#export PATH="$HOME/.node/12.13.1/bin:$PATH"
export PATH="$HOME/.node/13.9.0/bin:$PATH"

export NODE_REPL_HISTORY_FILE="$HOME/.iojs/.repl_history"

# pkg
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# ssh trickery
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# gnu cli tools
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# ASAN
SANITIZERS="-fsanitize=undefined -fsanitize=address -fsanitize=integer -fsanitize=alignment -fsanitize=bounds -fsanitize=enum -fsanitize=object-size"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.ghcup/bin:$PATH"

# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/findutnyy/.miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/findutnyy/.miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/findutnyy/.miniconda3/etc/profile.d/conda.sh"
#       CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/findutnyy/.miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<

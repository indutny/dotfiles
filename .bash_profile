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
# export PATH="$HOME/.node/10.21.0/bin:$PATH"
export PATH="$HOME/.node/14.6.0/bin:$PATH"

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

##
# Your previous /Users/findutnyy/.bash_profile file was backed up as /Users/findutnyy/.bash_profile.macports-saved_2020-06-24_at_10:29:06
##

# MacPorts Installer addition on 2020-06-24_at_10:29:06: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export PS1='\w $ '

export CC="ccache /Users/indutny/Code/llvm_cmake_build/bin/clang"
export CXX="ccache /Users/indutny/Code/llvm_cmake_build/bin/clang++"

# c and various
export PATH="$PATH:/Users/indutny/.bin"

# google depot tools
export PATH="$PATH:/Users/indutny/Code/google/depot_tools"

# brew
export PATH="/usr/local/bin:$PATH"

# gpg-2.1.0
# export PATH="/Users/indutny/.gnupg/2.1.0/bin/:$PATH"

# io
#export PATH="$HOME/.iojs/2.3.4/bin:$PATH"
#export PATH="$HOME/.node/0.10.33/bin:$PATH"
export PATH="$HOME/.node/4.2.1/bin:$PATH"

export NODE_REPL_HISTORY_FILE="$HOME/.iojs/.repl_history"

# pkg
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig"

# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# ssh trickery
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# gnu cli tools
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# ASAN
SANITIZERS="-fsanitize=undefined -fsanitize=address -fsanitize=integer -fsanitize=alignment -fsanitize=bounds -fsanitize=enum -fsanitize=object-size"

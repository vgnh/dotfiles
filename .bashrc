# User specific aliases and functions
PS1_CMD1=$(__git_ps1 " (%s)")
PS1="\[\e[0m\][\[\e[01;32m\]\u\[\e[01;37m\]@\[\e[01;32m\]\h \[\e[01;36m\]\W\[\e[01;31m\]${PS1_CMD1}\[\e[0m\]]\$ "

export PATH="$PATH:$HOME/go/bin"

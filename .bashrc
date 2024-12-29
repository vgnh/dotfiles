# User specific aliases and functions

# Note: The below line is Fedora specific.
# Since Fedora 18, the __git_ps1 function has been moved from /etc/bash_completion.d/git to /usr/share/git-core/contrib/completion/git-prompt.sh
# Ref: https://morefedora.blogspot.com/2012/12/git-bash-prompt-in-fedora-18.html
. /usr/share/git-core/contrib/completion/git-prompt.sh
PS1='\[\e[0m\][\[\e[01;32m\]\u\[\e[01;37m\]@\[\e[01;32m\]\h \[\e[01;36m\]\W\[\e[01;31m\]$(__git_ps1 " (%s)")\[\e[0m\]]\$ '

export PATH="$PATH:$HOME/go/bin"

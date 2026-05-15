# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


# Note: The below line is Fedora specific.
# Since Fedora 18, the __git_ps1 function has been moved from /etc/bash_completion.d/git to /usr/share/git-core/contrib/completion/git-prompt.sh
# Ref: https://morefedora.blogspot.com/2012/12/git-bash-prompt-in-fedora-18.html
. /usr/share/git-core/contrib/completion/git-prompt.sh
PS1='\[\e[0m\][\[\e[01;32m\]\u\[\e[01;37m\]@\[\e[01;32m\]\h \[\e[01;36m\]\W\[\e[01;31m\]$(__git_ps1 " (%s)")\[\e[0m\]]\$ '

export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

. "$HOME/.cargo/env"

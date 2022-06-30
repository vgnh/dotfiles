# User specific aliases and functions
PS1="\[\e[00m\][\[\e[01;32m\]\u@\h\[\e[00m\] \[\e[01;36m\]\W\[\e[00m\]]\$ "

export PATH="$PATH:$HOME/go/bin"
export SSH_AUTH_SOCK="$HOME/.ssh/id_ed25519"
export SSH_PRIVATE_KEY="$(cat /home/vignesh/.ssh/id_rsa)"

umask 002
PS1='[$PWD]$ '
EDITOR="/usr/bin/vim"

. "$HOME/.bashrc"

# Command line separator
if [ -f "$HOME/.bash_ps1" ]; then
  . "$HOME/.bash_ps1"
fi

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Homebrew settings
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# RVM

# THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!
[[ -s "/Users/ekinsella/.gvm/bin/gvm-init.sh" && -z $(which gvm-init.sh | grep '/gvm-init.sh') ]] && source "/Users/ekinsella/.gvm/bin/gvm-init.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# ~/.bashrc: executed by bash(1) for non-login shells.
export LC_CTYPE=en_US.UTF-8

export JAVA_OPTS='-server -Xms512m -Xmx2048m -XX:PermSize=64m -XX:MaxPermSize=512m -Dfile.encoding=UTF-8'

# Dev settings
export DEV_HOME=~/development
export LIB_HOME=$DEV_HOME/lib
export PROJECTS_HOME=$DEV_HOME/projects
export SCRIPTS_HOME=$DEV_HOME/scripts
export CLOJURE_HOME=$LIB_HOME/clojure/current
export JAVA_HOME=$(/usr/libexec/java_home)

alias lib='cd $LIB_HOME'
alias proj='cd $PROJECTS_HOME'
alias scripts='cd $SCRIPTS_HOME'

# Editor
alias oi='open -b com.jetbrains.intellij .'

# Git
alias gco='git checkout'
alias status='git status'
alias stat='git status'
alias pop='git stash pop'
alias stash='git stash'
alias branch='git branch -a'
alias diffhead='git diff head^ --stat'
alias loggraph="git log --graph --pretty=\"format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'\" --abbrev-commit --date=relative"

# DB
export MYSQL_HOME=/usr/local/mysql
alias mysql=$MYSQL_HOME/bin/mysql
alias mysqladmin=$MYSQL_HOME/bin/mysqladmin

alias postgres="postgres -D /usr/local/var/postgres"
#alias postgres="postgres -D /usr/local/pgsql/data"
#alias pgctl="pg_ctl -D /usr/local/var/postgres -l logfile start"
#alias postgres="postgres -D /usr/local/var/postgres"
#alias postd="su postgres -c '/opt/local/lib/postgresql84/bin/postgres -D /opt/local/var/db/postgresql85/defaultdb"

# Project settings
alias clojcon='cd $CLOJURE_HOME; java -cp clojure.jar clojure.main'
alias gmn='cd $PROJECTS_HOME/groovymn/gum-website'
alias fan='cd $PROJECTS_HOME/fanchatter'
alias elk='cd $PROJECTS_HOME/surlylabs/elk'
alias opi='cd $PROJECTS_HOME/opi'
alias fstep='cd $PROJECTS_HOME/opi/zinpro/first-step'

# Common settings
if [ -f "$HOME/.bash_common" ]; then
  . "$HOME/.bash_common"
fi

# Git settings
if [ -f "$HOME/.bash_git" ]; then
  . "$HOME/.bash_git"
fi

# Grails settings
if [ -f "$HOME/.bash_grails" ]; then
  . "$HOME/.bash_grails"
fi

# Rails settings
if [ -f "$HOME/.bash_rails" ]; then
  . "$HOME/.bash_rails"
fi

# Cassandra common settings
if [ -f "$HOME/.bash_cas" ]; then
  . "$HOME/.bash_cas"
fi

# ReachLocal common settings
if [ -f "$HOME/.bash_rl" ]; then
  . "$HOME/.bash_rl"
fi

export PATH="$JAVA_HOME/bin:$MYSQL_HOME/bin:$DSE_HOME/bin:$OPSC_HOME/bin:$SCRIPTS_HOME:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

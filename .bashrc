#!/bin/bash
alias hlog='git log --date-order --all --graph --format="%C(green)%H %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'
source /usr/local/dev-env/bin/profile

alias dev-ete='docker-compose -f docker-compose.ete.yml'

#local mac opts
alias ldl=$(find ~/Downloads -name "$(ls -lrt ~/Downloads/ | tr -s ' ' | cut -d' ' -f9 | tail -n1)")

export JAVA_6_HOME=/Library/Java/JavaVirtualMachines/1.6.0_65-b14-462.jdk/Contents/Home/
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home/
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home/

export JAVA_HOME=$JAVA_8_HOME

export HADOOP_HOME=/opt/palantir/hadoop

alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdk6="export JAVA_HOME=$JAVA_6_HOME"
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"

#BASH HISTORY
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
#UNIQ!!!!!
export HISTCONTROL=ignoredups:erasedups

# http://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows#3055135
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"


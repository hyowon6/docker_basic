# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#
# Sfecific configuration
#
export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]# \[\e[m\]'

#
# Docker Alias
#
# irm => Image rm
alias irm='docker rmi -f $(docker images -aq)'
# crm => Container rm 
alias crm='docker rm -f $(docker ps -aq)'
# vrm => Volume rm
alias vrm='docker volume rm -f $(docker volume ls -q)'
# nrm => Network rm
alias nrm='docker network rm -f $(docker network ls -q)'

alias dco='docker compose'
alias up='docker compose up -d'
alias down='docker compose down –v'

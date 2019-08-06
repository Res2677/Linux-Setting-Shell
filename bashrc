# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias python='python3'
alias pip='pip3'
alias ll='ls -l'
#nginx
alias pn='ps -ef|grep nginx'
alias nginxc="for i in \`ps -ef|grep 'nginx -p'|awk '{print $2}'\`; do kill $i; done"

#lua
export LUA_LIBDIR=/usr/local/openresty/lualib:$LUA_LIBDIR
#export LUA_PATH="/usr/local/openresty/lualib/?.lua;;"

export PATH=/usr/local/openresty/nginx/sbin:$PATH

#nginx
export LUAJIT_LIB=/usr/local/openresty/lualib/
export LUAJIT_INC=/usr/local/openresty/luajit/include/luajit-2.1/

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#color
export LS_OPTIONS='--color=auto'
eval `dircolors`
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

PS1="\[\e[37;40m\][\[\e[36;40m\]\u\[\e[37;40m\]@\h \[\e[37;40m\]\t \[\e[35;40m\]\w\[\e[0m\] ]\\$ "

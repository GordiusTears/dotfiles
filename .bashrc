PATH=/usr/sbin/:/sbin:$HOME/bin:/usr/bin:$PATH:.


export JLESSCHARSET=japanese
if type less &>/dev/null
then
  export PAGER=less
else
  export PAGER=more
fi

alias ls='ls -F --color'
#PS1='\w\$ '
#PS1='\h\$ '
if [ "$UID" = "0" ]
then
  PS1='\[\e[41m\]\w\$\[\e[m\] '
else
  PS1='\[\e[1m\]\w\$\[\e[m\] '
fi

case $TERM in
  kterm|xterm|mlterm|cygwin|vt102)
    _termtitle="\h:\w"
    PS1="\[\e]0;${_termtitle}\007\]${PS1}"
    ;;
esac
umask 022
#stty erase ^H
IGNOREEOF=3
#if [ "$DISPLAY" ]
#then
#  shopt -s chekcwinsize
#fi
stty erase ^H
stty intr ^C
stty susp ^Z
stty start undef
stty stop undef















export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

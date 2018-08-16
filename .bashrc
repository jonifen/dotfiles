alias cds="cd ~/source"
alias cdr="cd ~/source/repos"
alias clearhistory="history -c; history -w; clear"

# default PS1 (oneline)
#export PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\] $ "

# https://stackoverflow.com/questions/10133173/alter-git-prompt-on-windows
shopt -s promptvars
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose git'
export PS1='\n\[\033[1;36m\]\[\033[0m\]\[\033[1;34m\]\w\[\033[0m\] \[\033[1;32m\]$(__git_ps1)\[\033[0m\]$ '

# Hack to get tab naming to work correctly
# https://conemu.github.io/en/ShellWorkDir.html#bash_and_other_cygwin_shells
if [[ -n "${ConEmuPID}" ]]; then
  PROMPT_COMMAND='ConEmuC -StoreCWD'
fi


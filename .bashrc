# add colors to the prompt
c_user='\[\033[01;32m\]'
c_path='\[\033[01;34m\]'
c_reset='\[\033[00m\]'
c_git='\[\033[01;35m\]'
#This also sets your XTERM titles
export PROMPT_COMMAND='PS1="\[\e]2;$(has_proxy)\u@\h:\w\$(__git_ps1 \" (%s$(parse_git_dirty))\")\a\]$(has_proxy)${c_user}\u${c_reset}@${c_user}\h${c_reset}:${c_path}\w${c_reset}${c_git}\$(__git_ps1 \" (%s$(parse_git_dirty))\")${c_reset}\$ "'


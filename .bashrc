#Combined git and proxy status for your PS1

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

# Not currently used, could replace __git_ps1
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/\* \(.*\)/\1/"
}

function has_proxy {
  if [ ! -z $http_proxy ] || [ ! -z $https_proxy ] ;  then
    echo "[proxy]"
  else
    echo "[no proxy]"
  fi
}

# add colors to the prompt
c_user='\[\033[01;32m\]'
c_path='\[\033[01;34m\]'
c_reset='\[\033[00m\]'
c_git='\[\033[01;35m\]'
#This also sets your XTERM titles
export PROMPT_COMMAND='PS1="\[\e]2;$(has_proxy)\u@\h:\w\$(__git_ps1 \" (%s$(parse_git_dirty))\")\a\]$(has_proxy)${c_user}\u${c_reset}@${c_user}\h${c_reset}:${c_path}\w${c_reset}${c_git}\$(__git_ps1 \" (%s$(parse_git_dirty))\")${c_reset}\$ "'


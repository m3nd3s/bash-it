# For unstaged(*) and staged(+) values next to branch name in __git_ps1
GIT_PS1_SHOWDIRTYSTATE="enabled"

function rvm_version_prompt {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')

  [ "$gemset" != "" ] && gemset="@$gemset"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')

  [ "$version" == "2.0.0" ] && version=""
  local full="$version$gemset"

  [ "$full" != "" ] && echo "$full"
}

function prompt_command() {
    PS1="% ${blue}\W/${normal} ${red}$(rvm_version_prompt)${normal} ${green}$(__git_ps1 "(%s)") ${normal}$ "
}

PROMPT_COMMAND=prompt_command;

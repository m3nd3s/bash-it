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
<<<<<<< HEAD
    PS1="% ${blue}\W/${normal} ${red}$(rvm_version_prompt)${normal} ${green}$(__git_ps1 "(%s)") ${normal}$ "
=======
    # Check http://github.com/Sirupsen/dotfiles for screenshot
    PS1="% $blue\W/ $bold_red$(rvm_version_prompt)$bold_green$(__git_ps1 "(%s)") ${normal}$ "
>>>>>>> Meu tema
}

PROMPT_COMMAND=prompt_command;

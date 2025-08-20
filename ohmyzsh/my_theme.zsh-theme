# Based on gnzh theme


#INFO:
# %n: Username
# %m: Hostname
# %~: Current working directory (path shortened with ~ for home)
# %c or %1~: Current directory name only (or with a specified number of parent directories)
# %F{color} and %f: Change foreground color (e.g., %F{green} for green text)
# %K{color} and %k: Change background color
# %B and %b: Bold text
# %U and %u: Underlined text
# NOTE: uppercase enables, lowercase resets


# INFO: GIT variables:
# ZSH_THEME_GIT_PROMPT_PREFIX
# ZSH_THEME_GIT_PROMPT_SUFFIX
# ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX
# ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX
# ZSH_THEME_GIT_PROMPT_DIRTY
# ZSH_THEME_GIT_PROMPT_CLEAN
# ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE
# ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE
# ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE
# ZSH_THEME_GIT_PROMPT_AHEAD
# ZSH_THEME_GIT_PROMPT_BEHIND
# ZSH_THEME_GIT_PROMPT_SHA_BEFORE
# ZSH_THEME_GIT_PROMPT_SHA_AFTER
# ZSH_THEME_GIT_PROMPT_ADDED
# ZSH_THEME_GIT_PROMPT_MODIFIED
# ZSH_THEME_GIT_PROMPT_RENAMED
# ZSH_THEME_GIT_PROMPT_DELETED
# ZSH_THEME_GIT_PROMPT_STASHED
# ZSH_THEME_GIT_PROMPT_UNMERGED
# ZSH_THEME_GIT_PROMPT_DIVERGED
# ZSH_THEME_GIT_PROMPT_UNTRACKED





setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

# Check the UID
if [[ $UID -ne 0 ]]; then # normal user
  #PR_USER='%F{green}%n%f'
  #PR_USER_OP='%F{green}%#%f'

  PR_USER=''
  PR_USER_OP=''
  PR_PROMPT='%f➤ %f'
else # root
  PR_USER='%F{red}%n%f%F{cyan}@'
  PR_USER_OP='%F{red}%#%f'
  PR_PROMPT='%F{red}➤ %f'
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{red}%M%f' # SSH
else
  #PR_HOST='%F{green}%m%f' # no SSH
  PR_HOST=''
fi


local return_code="%(?..%F{red}%? ↵%f)"

local user_host="${PR_USER}${PR_HOST}"
local current_dir="%B%F{blue}%~%f%b"
local git_branch='$(git_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)' 

PROMPT="${venv_prompt}${user_host} ${current_dir} \$(ruby_prompt_info) ${git_branch}
$PR_PROMPT "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %f"
ZSH_THEME_RUBY_PROMPT_PREFIX="%F{red}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%f"
ZSH_THEME_VIRTUALENV_PREFIX="%F{red}("
ZSH_THEME_VIRTUALENV_SUFFIX=")%f "

}

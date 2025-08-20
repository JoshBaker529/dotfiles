#eval "$(starship init zsh)"
export CLICOLOR=1

# Adding ~/.programs to PATH
export PATH="$HOME/.programs:$PATH"

# Defining XDG_CONFIG_HOME for Ghostty
export XDG_CONFIG_HOME="$HOME/.config"
export GHOSTTY_RESOURCES=~/.config/ghostty/themes

# Adding ~/include to C++ include path
export CPLUS_INCLUDE_PATH="$HOME/include"


# oh my zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

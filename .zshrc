# Created by newuser for 5.8

# Prompt line
PROMPT='%n@%m %~
%F{green}%#%f '

# Alias
alias ls='ls --color=auto'

# Conda initialisation
. /etc/profile.d/conda.sh
# conda activate base

# HISTORY
# https://zsh.sourceforge.io/Doc/Release/Options.html#History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
unsetopt APPEND_HISTORY
unsetopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_EXPIRE_DUPS_FIRST

# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/rtalreja/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/rtalreja/.fzf/bin"
fi

source <(fzf --zsh)

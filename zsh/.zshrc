source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

# vi mode
bindkey -v
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char

# aliases
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias grep='egrep'
alias la='ls -latrFG'
alias rm='rm -i'
alias vd='vimdiff'
alias c='cat'
alias l='less'
alias h='head'
alias t='tail'
alias vim='nvim'
alias v='vim'

export FZF_DEFAULT_OPTS="--tmux 80%"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


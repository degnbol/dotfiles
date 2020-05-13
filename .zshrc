# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set locale
export LC_ALL="en_US.UTF-8"

# The following lines were added by compinstall
zstyle :compinstall filename '/home/degnbol/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.oh-my-zsh_settings
source ~/antigen/antigen.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/degnbol/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/degnbol/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/degnbol/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/degnbol/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
setopt autocd
# End of lines configured by zsh-newuser-install

export EDITOR=nvim

# vi prompt keybindings that are copied from normal emacs input. This is relevant since we are using vi-mode with antigen
source ~/.bindvi

source ~/.aliases

export PATH="$PATH:/home/degnbol/.local/bin"

conda activate py37


source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

#antigen bundle osx

# we choose vi mode for prompt instead of default emacs. To make it useful we also need to add the history substring search
#antigen bundle vi-mode
antigen bundle history-substring-search

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git pip safe-paste

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen bundle unixorn/autoupdate-antigen.zshplugin

# Load the theme.
antigen theme romkatv/powerlevel10k

antigen bundle ael-code/zsh-colored-man-pages

# Tell Antigen that you're done.
antigen apply


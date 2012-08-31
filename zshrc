#
# Sets Prezto options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   haplesshero13 <haplesshero13@gmail.com>
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':prezto:module:editor' keymap 'vi'

# Auto convert .... to ../..
zstyle ':prezto:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':prezto:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':prezto:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':prezto:module:terminal' auto-title 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':prezto:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':prezto:load' zfunction 'zargs' 'zmv'

# Set the Prezto modules to load (browse modules).
# The order matters.
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'git' \
  'ruby' \
  'rails'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
fpath=(~/.dotfiles/zsh $fpath)
zstyle ':omz:module:prompt' theme 'hapless'

# Source Prezto.
source "$PDIR/init.zsh"

# Customize to your needs...
# Load rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && . $HOME/.rvm/scripts/rvm

# hg aliases
alias hgcm='hg commit -m'
alias hgp='hg pull -u'
alias hgu='hg update'

# Use vim
export EDITOR='vim'
export VISUAL='vim'

# add local per-machine config
if [ -f $HOME/.zshrc-local ]; then
    source $HOME/.zshrc-local
fi

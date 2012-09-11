# haplesshero13's Dot Files
Go from freshly installed Linux/OS X to fully functioning faster than you can say "dot files"!

## Acknowledgement
* steeef's [dotfiles](https://github.com/ryanb/dotfiles): Where I got the idea, parent repo, prompt ideas
* sorin's [prezto](https://github.com/sorin-ionescu/prezto): Stole his prompt theme, and his zsh framework

## Installation
### Prerequisites
```bash
sudo <apt-get|brew|yum> install zsh vim git mercurial curl
hg clone http://bitbucket.org/sjl/hg-prompt/ ~/.hg-prompt
```

Prerequisites include Ruby, so let's install that using RVM:

**RVM**

```bash
curl -L get.rvm.io | bash -s stable
source "$HOME/.rvm/scripts/rvm"
rvm requirements
# install some stuff needed for Ruby (MRI)
rvm install 1.9.3
```
### Dotfiles

```zsh
zsh
git clone --recursive git://github.com/haplesshero13/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
 ln -si "$rcfile" "$ZDOTDIR/.${rcfile:t}"
done
curl -Lo- https://bit.ly/janus-bootstrap | bash
chsh -s /bin/zsh
```
## Components
### Zsh and Prezto
I use the newly-named [prezto](https://github.com/sorin-ionescu/prezto), and thus my prompt theme and zshrc are configured for prezto.

### Vim and Janus
I use Janus, with custom plugins which go in `~/.janus`. These are all listed as submodules of the main repo.

Custom configuration for specific machines goes in the `~/.zshrc-local` file.

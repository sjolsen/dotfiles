# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install

for zsrc in ~/dotfiles/zsh/*[^~]; do
    source "$zsrc"
done

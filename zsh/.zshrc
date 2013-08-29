# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome
setopt appendhistory extendedglob notify
setopt complete_aliases
bindkey -e
# End of lines configured by zsh-newuser-install

for zsrc in ~/dotfiles/zsh/*[^~]; do
    source "$zsrc"
done

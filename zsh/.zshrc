# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
DIRSTACKSIZE=10
setopt auto_cd autopushd pushdminus pushdsilent pushdtohome
setopt appendhistory extendedglob notify
setopt complete_aliases
bindkey -e
# End of lines configured by zsh-newuser-install

for zsrc in ~/dotfiles/zsh/*.zshrc; do
    source "$zsrc"
done

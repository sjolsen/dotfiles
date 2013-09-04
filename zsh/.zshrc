# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
DIRSTACKSIZE=10
# End of lines configured by zsh-newuser-install

REPORTTIME=2

setopt auto_cd autopushd pushdminus pushdsilent pushdtohome
setopt appendhistory extendedglob notify
setopt complete_aliases
setopt hist_ignore_space hist_ignore_dups

for zsrc in ~/dotfiles/zsh/*.zshrc; do
    source "$zsrc"
done

if [ -d ~/.zsh.d ]; then
    for zsrc in ~/.zsh.d/*.zshrc; do
	source "$zsrc"
    done
fi

source ~/dotfiles/zsh/buggy.zsh

WORDCHARS=
KEYTIMEOUT=0

bindkey -e

# C-z
bindkey '^z' undo
# M-x
bindkey 'ø' execute-named-cmd
# M-f
bindkey '\ef' emacs-forward-word
# M-b
bindkey '\eb' emacs-backward-word
# M-h
bindkey '\eh' backward-delete-word
# M-? k
bindkey '\e?k' describe-key-briefly
# M-? f
bindkey '\e?f' run-help
# <backtab>
bindkey '\e[Z' reverse-menu-complete

#if [ -n $BUGGY ]; then
    bindkey '\eOF' end-of-line
    bindkey '\e[F' end-of-line
    bindkey '\eOH' beginning-of-line
    bindkey '\e[H' beginning-of-line
    bindkey '\e[1~' beginning-of-line
    bindkey '\e[3~' delete-char
    bindkey '\e[4~' end-of-line
#fi

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "\es" insert-sudo

################################################################################
# BOL tabbing

zstyle ':completion:*' insert-tab false

function expand-or-complete-or-list-files() {
    if [[ $#BUFFER == 0 ]]; then
        BUFFER="ls "
        CURSOR=3
        zle list-choices
        zle backward-delete-word
    else
        zle expand-or-complete
    fi
}

zle -N expand-or-complete-or-list-files
bindkey '^I' expand-or-complete-or-list-files

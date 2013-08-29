export WORDCHARS=
export KEYTIMEOUT=0

bindkey 'ø' execute-named-cmd
bindkey '\eh' backward-delete-word
bindkey '\e?k' describe-key-briefly
bindkey '\e?f' run-help

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

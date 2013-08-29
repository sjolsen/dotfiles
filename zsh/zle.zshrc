export WORDCHARS=
export KEYTIMEOUT=0

bindkey 'ø' execute-named-cmd
bindkey '\eh' backward-delete-word
bindkey '\e?k' describe-key-briefly
bindkey '\e?f' run-help

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "\es" insert-sudo

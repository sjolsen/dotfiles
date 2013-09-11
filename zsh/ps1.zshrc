source ~/dotfiles/zsh/color.zsh

function PS1-prompt-printer {
    local retcode=$?
    local prompt=$1

    case $retcode in
	0)
	    echo-as-color green nil nil "$prompt";;
	1)
	    echo-as-color red   nil nil "$prompt";;
	130)
	    echo-as-color blue  nil nil "$prompt";;
	*)
	    echo-as-color red   nil t   "$prompt";;
    esac

    return $retcode
}

function PS1-euid-printer {
    local retcode=$?
    local separator=$1

    case $EUID in
	0)
	    echo-as-color red nil nil "$separator";;
	*)
	    echo-as-color nil nil nil "$separator";;
    esac

    return $retcode
}

function PS1-init {
    local lbracket="["
    local rbracket="]"

    if [[ -n "$SSH_CLIENT" ]]; then
	lbracket="%{\$(echo-as-color blue nil nil '%}$lbracket%{' )%}"
	rbracket="%{\$(echo-as-color blue nil nil '%}$rbracket%{' )%}"
    fi

    PS1="$lbracket%{\$(PS1-prompt-printer '%}%m%{' )\$(PS1-euid-printer '%}:%{')\$(PS1-prompt-printer '%}%0~%{' )%}$rbracket "
}

PS1-init

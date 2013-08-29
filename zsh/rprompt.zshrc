source ~/dotfiles/zsh/buggy.zsh
source ~/dotfiles/zsh/color.zsh

function time-color {
    local retcode=$?
    local hour=$(date +%H)

    if [[ ($hour -ge 8) && ($hour -lt 17) ]]; then
	echo -n 'green'
    elif [[ ($hour -ge 17) && ($hour -lt 21) ]]; then
	echo -n 'cyan'
    elif [[ ($hour -ge 21) && ($hour -lt 23) ]]; then
	echo -n 'yellow'
    else
	echo -n 'red'
    fi

    return $retcode
}

function apply-time-color {
    local retcode=$?
    local color=$(time-color)
    local text="$*"

    echo -n "%{$(echo-as-color $color nil nil %}$text%{)%}"

    return $retcode
}

export RPROMPT='[%D{%Y.%m.%d} $(apply-time-color %D{%H:%M.%S})]'

if [[ ("$TERM" != "eterm-color") && ("$BUGGY" == "") ]]; then
    echo foo
    TMOUT=1
    TRAPALRM() {
	zle reset-prompt
    }
fi

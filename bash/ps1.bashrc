function color-offset {
    case $1 in
	"black")
	    echo -n "0";;
	"red")
	    echo -n "1";;
	"green")
	    echo -n "2";;
	"yellow")
	    echo -n "3";;
	"blue")
	    echo -n "4";;
	"magenta")
	    echo -n "5";;
	"cyan")
	    echo -n "6";;
	"white")
	    echo -n "7";;
    esac
}

function echo-as-color {
    foreground=$1; shift
    background=$1; shift
    bold=$1; shift
    text=$@

    eseq="["

    fgcode=$(color-offset "$foreground")
    bgcode=$(color-offset "$background")

    if [[ "$fgcode" != "" ]]; then
	echo -n "$eseq"$(($fgcode + 30))"m"
    fi

    if [[ "$bgcode" != "" ]]; then
	echo -n "$eseq"$(($bgcode + 40))"m"
    fi

    if [[ "$bold" == "t" ]]; then
	echo -n "$eseq""1m"
    fi

    echo -n "$text"
    echo -n "$eseq""0m"
}

function PS1-prompt-printer {
    retcode=$?
    prompt=$1

    case $retcode in
	0)
	    echo-as-color green nil nil "$prompt";;
	1)
	    echo-as-color red   nil nil "$prompt";;
	*)
	    echo-as-color red   nil t   "$prompt";;
    esac

    return $retcode
}

function PS1-init {
    PS1="[\$(PS1-prompt-printer \h):\$(PS1-prompt-printer '\w')] "
}

PS1-init

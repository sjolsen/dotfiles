setopt PROMPT_SUBST

function color-offset {
    local retcode=$?

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

    return $retcode
}

function echo-as-color {
    local retcode=$?

    local foreground=$1; shift
    local background=$1; shift
    local bold=$1; shift
    local text=$@

    local eseq="["

    local fgcode=$(color-offset "$foreground")
    local bgcode=$(color-offset "$background")

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

    return $retcode
}

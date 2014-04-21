if [[ $TERM == "eterm-color" ]]; then
    if [ -n "${ETERM_SUPPORTS_SUPPRESSION+x}" ]; then
        echo -n '' 1>&2
    fi

    function eterm-set-cwd {
	$@
	echo -e "\033AnSiTc" $(pwd)
    }

    chpwd_functions=(eterm-set-cwd)

    function eterm-reset {
	echo -e "\033AnSiTu" $(whoami)
	echo -e "\033AnSiTh" $(hostname)
	eterm-set-cwd
    }

    eterm-reset
fi

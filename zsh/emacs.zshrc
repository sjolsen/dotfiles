if [[ $TERM == "eterm-color" ]]; then
    echo -n '' 1>&2

    function eterm-set-cwd {
	$@
	echo -e "\033AnSiTc" $(pwd)
    }

    function eterm-reset {
	echo -e "\033AnSiTu" $(whoami)
	echo -e "\033AnSiTh" $(hostname)
	eterm-set-cwd
    }

    for dircmd in cd #pushd popd; do
    do
	alias $dircmd="eterm-set-cwd $dircmd"
    done

    eterm-reset
fi

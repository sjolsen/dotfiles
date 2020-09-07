#!/bin/sh

if [ -z "$*" ]; then
    exec emacsclient -c -a emacs-daemon.sh
else
    exec emacsclient "$@" -a emacs-daemon.sh
fi

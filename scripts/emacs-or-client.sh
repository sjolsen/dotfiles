#!/bin/sh

if [ -z "$*" ]; then
    emacsclient -c -a emacs-daemon.sh
else
    emacsclient "$@" -a emacs-daemon.sh
fi

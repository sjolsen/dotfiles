#!/bin/sh

if [ -z "$*" ]; then
    emacsclient -c -a emacs -e "(ensure-ansi-term)"
else
    emacsclient "$@" -a emacs
fi

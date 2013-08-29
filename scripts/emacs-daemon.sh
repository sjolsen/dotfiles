#!/bin/sh

emacs --daemon
emacsclient -c "$@"

#!/bin/sh

emacs --daemon
exec emacsclient -c "$@"

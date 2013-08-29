rmtilde () {
    find -name '*~' -exec rm \{\} $@ \;
}

alias ls='ls -l --color=auto'
alias g11='g++-4.8 -std=c++11'

# Suffixes
alias -s c=emacs-or-client.sh
alias -s h=emacs-or-client.sh
alias -s cc=emacs-or-client.sh
alias -s hh=emacs-or-client.sh
alias -s cu=emacs-or-client.sh
alias -s cuhh=emacs-or-client.sh
alias -s micc=emacs-or-client.sh
alias -s mich=emacs-or-client.sh

alias -s org=emacs-or-client.sh

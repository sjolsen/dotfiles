rmtilde () {
    find -name '*~' -exec rm \{\} $@ \;
}

if [[ $(uname) == "FreeBSD" ]]; then
    alias ls='ls -lG'
else
    alias ls='ls -l --color=auto'
fi
alias g11='g++-4.8 -std=c++11'
alias cl='clang++-trunk -std=c++1y -stdlib=libc++'

# Suffixes
for SUFFIX in c h cc hh cu cuhh micc mich org txt; do
    alias -s "$SUFFIX"=emacs-or-client.sh
done

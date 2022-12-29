#!/bin/bash

alias rm='rm -i'
alias ls='logo-ls'
alias la='logo-ls -a'


if command -v oh-my-posh >/dev/null; then
        eval "$(oh-my-posh init bash --config ~/.poshthemes/catppuccin_mocha.omp.json)"
fi

LS_COLORS=$LS_COLORS:'di=1;95:' ; export LS_COLORS

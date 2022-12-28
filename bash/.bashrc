#!/bin/bash

alias ls='ls --color=always'
alias rm='rm -i'

if command -v oh-my-posh >/dev/null; then
        eval "$(oh-my-posh init bash --config ~/.poshthemes/catppuccin.omp.json)"
fi

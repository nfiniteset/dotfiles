#! /bin/zsh
# A script to make using 256 colors in zsh less painful.
# P.C. Shyamshankar <sykora@lucentbeing.com>
# Copied from http://github.com/sykora/etc/blob/master/zsh/functions/spectrum/

typeset -Ag FX FG BG

FX=(
    reset     "%{%}"
    bold      "%{%}" no-bold      "%{%}"
    italic    "%{%}" no-italic    "%{%}"
    underline "%{%}" no-underline "%{%}"
    blink     "%{%}" no-blink     "%{%}"
    reverse   "%{%}" no-reverse   "%{%}"
)

for color in {000..255}; do
    FG[$color]="%{${color}m%}"
    BG[$color]="%{${color}m%}"
done

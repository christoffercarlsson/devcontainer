export BAT_THEME="base16"
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="xterm-256color"
export LANG="en_US.UTF-8"
export LC_ALL="$LANG"

if [ -n "$SSH_TTY" ] && [ "$SHLVL" -eq 1 ]; then
    cd /workspace && t
fi

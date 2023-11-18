### LF File Manager

fpath=(~/.config/lf/zsh $fpath)
autoload -U compinit
compinit

LFCD="${HOME}/.config/lf/lk.sh" #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
	source "$LFCD"
fi

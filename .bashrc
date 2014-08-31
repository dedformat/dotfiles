
# ~/.bashrc
#
#export PATH=~/bin:$PATH

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# MPD daemon start
[ ! -s ~/.config/mpd/pid ] && mpd


export EDITOR=vim
export HISTCONTROL=ignoredups
export PAGER=less
export QT_SELECT=4
export QT_STYLE_OVERRIDE=gtk
export USE_CCACHE=1
export CCACHE_DIR=/scratch/.ccache
export CCACHE_COMPILERCHECK="stat -L --printf=%s %compiler%"
export CCACHE_SLOPPINESS=time_macros,include_file_mtime,file_macro
export CCACHE_BASEDIR=/

# Everyday usefulness
alias diff='colordiff -u'
alias less='less -S -#5 -q -R'
alias ls='ls --color=auto -F'
alias vi=vim
alias grep='grep --color'
alias egrep='egrep --color'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias pacman='sudo pacman'

# New commands
#cd and ls in one
cl() {
	dir=$1
	if [[ -z "$dir" ]]; then
		dir=$HOME
	fi
	if [[ -d "$dir" ]]; then
		cd "$dir"
		ls
	else
		echo "bash: cl: '$dir': Directory not found"
	fi
}

eval $(dircolors .dircolors)
#source ~/.bashrc-prompt

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

#function ddiff
#{
#	diff <(cut -d] -f2- $1 | tr -d '\r') <(cut -d] -f2- $2 | tr -d '\r')|less
#}
#PATH=$PATH:"/usr/local/sbin:/usr/local/bin:/usr/bin:~/scripts:~/.config/bspwm/panel:/usr/bin/core_perl:"

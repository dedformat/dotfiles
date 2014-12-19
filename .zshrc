# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/deadformat/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=1000
setopt appendhistory notify
bindkey -e
# End of lines configured by zsh-newuser-install
export EDITOR="vim"
# keybinds
export WORDCHARS=''

bindkey "^[Od" backward-word 
bindkey "^[Oc" forward-word
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char

# prompt
PROMPT=" %{$fg_bold[yellow]%} » "
RPROMPT="%{$fg[black]%}%M:%{$fg_bold[yellow]%}%~%{$reset_color%}   "

# powerline
#powerline-daemon -q

# Powerline integration
#. /usr/share/zsh/site-contrib/powerline.zsh

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
alias archey='archey3'
alias sf='screenfetch'
alias alsi='alsi -a -u'
#alias cp='acp -g'

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

# eval $(dircolors .dircolors)


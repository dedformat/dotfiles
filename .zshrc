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

powerline-daemon -q

# Powerline integration
. /usr/share/zsh/site-contrib/powerline.zsh

alias diff='colordiff -u'
alias ls='ls --color=auto -F'
alias grep='grep --color'

eval $(dircolors .dircolors)


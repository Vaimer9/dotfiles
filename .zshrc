autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}λ%b "

export ZSH="/home/v9/.oh-my-zsh"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5B5B5B,bg=default,bold,underline"

source $ZSH/oh-my-zsh.sh

plugins=( 
	git
    zsh-autosuggestions
)

export KEYTIMEOUT=1

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# For Vim Keybinds
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select # For Editing Command in vim

zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}

zle -N zle-line-init

autoload edit-command-line; zle -N edit-command-line

####################
##### Keybinds #####
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -s '^o' 'lf\n'
bindkey '^e' edit-command-line
####################

echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}

####################
##### Aliases ######
alias luavim="nvim -u ~/.config/nvim/lua/init.vim"
alias record="ffmpeg -y -f x11grab -framerate 30 -s 1366x768 -i :0.0"
alias dotup='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls="exa"
alias gp="git push -u origin main"
alias tmux="tmux -u"
alias lvim="nvim -u ~/.config/nvim/lsp.vim"
alias mvim="nvim -u ~/.config/nvim/minimal.vim"
alias clauck="tty-clock -ct -C 4"
alias pacman="doas pacman"
alias sudo="doas"
alias lofi="mpv https://www.youtube.com/watch\?v\=5qap5aO4i9A --no-video"
alias vsh="/home/v9/coding/rust/vsh/target/release/vsh"
alias icat="kitty +kitten icat"
alias discord="~/Downloads/Discord/Discord </dev/null &>/dev/null &; disown %\~/Downloads/Discord/Discord"
####################

##########################
##### Manual Plugins #####
source /home/v9/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
##########################

bindkey '^ ' autosuggest-accept

source /home/v9/.config/broot/launcher/bash/br

RND=$((1 + RANDOM % 2))

if [ $RND -eq 1 ]
then
	fortune | cowsay
else
	ufetch
fi

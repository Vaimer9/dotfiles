autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}λ%b "

export ZSH="/home/v9/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

plugins=(
        git
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

alias ls="exa"
alias gp="git push -u origin main"
alias battery="cat /sys/class/power_supply/BAT0/capacity"
alias bx="BitchX irc.libera.chat"
alias motto="cat ~/docs/motto"
alias dotup='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="~/.ghcup/bin:$PATH"

# export DISPLAY=$(ip route list default | awk '{print $3}'):0
# export LIBGL_ALWAYS_INDIRECT=1

cd ~
eval "$(starship init zsh)"

# opam configuration
[[ ! -r /home/v9/.opam/opam-init/init.zsh ]] || source /home/v9/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

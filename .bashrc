#
# ~/.bashrc
#
[[ $- != *i* ]] && return


# g++ setting
alias g++='g++ -I /usr/local/inlcude'

# Shortcuts to Directories
alias CI='cd ~/notes/GIST/CILAB'
alias CV='cd ~/notes/GIST/2019_fall/CV'

# Shortcuts to Commands
alias copy='xclip -selection c'
alias c='cd'
alias r='ranger'
alias ls='ls -hN --color=auto --group-directories-first'
alias l='ls'
alias ll='ls -al'
alias p='sudo pacman'
alias b='bluetoothctl'
alias tf='source ~/envs/tensorflow/bin/activate'
alias pg='ps -ef | grep'
alias hg='history | grep'
alias g='git'
alias gc='git checkout'
alias gb='git branch'
alias d='docker'
alias di='docker image'
alias dc='docker container'

alias t='task'

alias mh='xrandr --output DP2 --auto --right-of eDP1'
alias mh2='xrandr --output DP2 --auto --left-of eDP1'
alias mhv='xrandr --output DP2 --rotate left'
alias mhh='xrandr --output DP2 --rotate normal'


alias nautilus='touch /tmp/whereami && nautilus `cat /tmp/whereami`'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/\* //' -e 's/\(.*\)/(\1)/'
}

#PS1="[\u@\h \[\e[32m\]\W \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
PS1="\u \[\e[32m\]\W \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install


# Docker
# alias vue='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" -u "$(id -u)" ebiven/vue-cli vue'



cat /home/park/.cache/wal/sequences



mkcdir ()
{
  mkdir -p -- "$1" &&
    cd -- "$1"
}



# The contents of this variable are executed 
# as a regular Bash command just before Bash displays a prompt.
export PROMPT_COMMAND="pwd > /tmp/whereami"

export PATH=$PATH:/home/park/repos/scripts/

HISTIGNORE='l:ls:cd *:cd:history:hg *'


if [[ -f /tmp/whereami ]]; then
  cd $(cat /tmp/whereami)
fi



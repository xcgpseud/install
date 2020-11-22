cat >> ~/.bashrc <<- EOM
[[ -f ~/.bash_files/functions ]] && source ~/.bash_files/functions
[[ -f ~/.bash_files/aliases ]] && source ~/.bash_files/aliases
[[ -f ~/.bash_files/path ]] && source ~/.bash_files/path
EOM

cd ~/.bash_files

cat >> ./functions <<- EOM

EOM

cat >> ./aliases <<- EOM
alias brc='vim ~/.bashrc'
alias bf='vim ~/.bash_files/functions'
alias ba='vim ~/.bash_files/aliases'
alias bp='vim ~/.bash_files/path'
alias rl='source ~/.bashrc'

alias repos='cd ~/Documents/repos'
EOM

cat >> ./path <<- EOM

EOM

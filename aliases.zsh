#LS
case "$(uname)" in
    Linux)
        alias ls='ls --color=auto' ;;
    Darwin)
        alias ls='ls -G' ;;
esac

alias gcc="/usr/local/bin/gcc-4.9"

alias display="python -m http.server"

alias du="du -h --max-depth=1 | sort -hr"

if [[ $(whoami) == "yl1363" ]]; then
    alias scr='cd /scratch/yl1363'
    alias cpt='cd /scratch/yl1363'
elif [[ $(whoami) == "jasonleeinf" ]]; then
    if [[ $(hostname) == "jasonleeinf-mbp" ]]; then
        alias scr="cd /Users/jasonleeinf/scratch"
        alias dat="cd /Users/jasonleeinf/corpora"
        alias ct="/usr/bin/ctags"
    else;
        alias scr="cd /private/home/jasonleeinf/scratch"
        alias dat="cd /private/home/jasonleeinf/corpora"
        alias cpt="cd /checkpoint/jasonleeinf"
        alias ct="/usr/bin/ctags-exuberant"
    fi
elif [[ $(whoami) == "yunjae" ]]; then
    alias scr="cd /misc/kcgscratch1/ChoGroup/jason"
    alias cpt="cd /misc/kcgscratch1/ChoGroup/jason"
fi

#SLURM
alias sinfo="sinfo -o --long --Node --format='%.6N %.8T %.4c %.10m %.20f'"
alias scj="scancel -u jasonleeinf"
alias sq="squeue -l --format='%.9i %.9P %.9q %.50j %.18u %.9b %.6D %.6N %.15L'"
alias sqj="sq | grep $(whoami)"
alias sqja="squeue -l --format='%.9i %.9q %.40j %.18u %.9b %.6D %.6N %.15L' | grep $(whoami)"

alias sq40="sq | grep gpu:p40"
alias sq100="sq | grep gpu:p100"
alias sq40-="sq | grep gpu:p40 | grep gpu-"
alias sq100-="sq | grep gpu:p100 | grep gpu-"

alias kc="kp 21; kp 22; kp 23; kp 24; kp 25; kp 26; kp 27; kp 28; kp 29"

alias vundle='vim +PluginInstall +qall'

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable

alias nasty='find . -name "*.pyc" -print -type f -delete; find . -name "*.swp" -print -type f -delete; find . -name "*.swo" -print -type f -delete; find . -name "*.py~" -print -type f -delete; find . -name "*.nfs*"'

alias python_ipdb="python -m ipdb"

alias dy_ipdb="python -m ipdb run.py --dynet-autobatch 1 --dynet-gpu --dynet-mem 10000"

alias dy="python run.py --dynet-autobatch 1 --dynet-gpu --dynet-mem 10000"

#SSH
alias sd='ssh devfair'
alias sp='ssh prince'
alias sp0='ssh prince0'
alias sp1='ssh prince1'

alias nyu='ssh nyu'
alias fa='cd /misc/kcgscratch1/ChoGroup/jason/fair'

alias cs='ssh cs'
alias d1='ssh d1'
alias gg="git add -u; git commit -m 'hi'; git push"

#GIT
alias grms='git ls-files | grep '\.swp$' | xargs git rm'

#GPU
alias gtop='watch -n 1 nvidia-smi'
alias cv='nvcc --version'

alias c='clear'
alias cl='clear; ll'

#TMUX
alias ta='tmux a -t'
alias tl='tmux ls'
alias t='tmux'
alias tn="tmux new -s"

#EDITORS
alias v='vim'
alias vi='vim'

#COLORFULNESS
alias grep="grep --colour"

#DIRS
alias -g ...='cd ../../'           #cd ...
alias -g ....='cd ../../../'       #cd ....
alias -g .....='cd ../../../../'   #cd .....
alias cnt='ls -1 | wc -l'

# Make some possibly destructive commands more interactive.
alias rm='rm -Iv'
alias rd='rm -Irv'
alias mv='mv -iv'
alias cp='cp -iv'

alias sc="source"

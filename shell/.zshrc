# zsh
export ZSH="/home/themidis/.oh-my-zsh"
ZSH_THEME="bydream"

source $ZSH/oh-my-zsh.sh
ENABLE_CORRECTION="false"

# bindings
bindkey ^B backward-word 
bindkey ^F forward-word 

bindkey ^D kill-whole-line 

bindkey ^W backward-kill-word 
bindkey ^H backward-delete-char

bindkey ^K kill-word 
bindkey ^J delete-char

bindkey ^U undo 

# conf
alias scfg="vim ~/.zshrc"
alias xcfg="vim ~/.Xresources; xrdb .Xresources"

# system 
alias jctl="journalctl"
alias sysen="sudo systemctl enable"
alias sysdi="sudo systemctl disable"
alias sysst="sudo systemctl stop"

# directories
alias docs="cd ~/Documents"
alias downs="cd ~/Downloads"
alias null="&>/dev/null"

# programs
alias vif="~/.config/vifm/scripts/vifmrun"
alias vol="sudo alsamixer"
alias gif="byzanz-record"

# shells
alias spy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# get top process eating memory 
alias psmem='ps auxf | sort -nr -k 4' 
alias psmem10='ps auxf | sort -nr -k 4 | head -10' 

# get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3' 
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# git 
alias addup='git add -u' 
alias add='git add' 
alias readd='git remote add' 
alias branch='git branch' 
alias checkout='git checkout' 
alias clone='git clone' 
alias commit='git commit -m' 
alias fetch='git fetch' 
alias pull='git pull' 
alias push='git push' 
alias status='git status' 
alias tag='git tag' 
alias newtag='git tag -a'

# functions 
function wifi {
	sudo netctl stop $1
    sudo ip link set wlp8s0 down
    sudo netctl start $1 
}


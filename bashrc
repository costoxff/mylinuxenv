# alias
alias rmall="rm -rf"

# git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# text style
reset='\[\e[0m\]'
normal='\[\e[0m\]'
bold='\[\e[1m\]'
faint='\[\e[2m\]'
ltalics='\[\e[3m\]'
underlined='\[\e[4m\]'

# foreground code
black='\[\033[30m\]'
red='\[\033[31m\]'
green='\[\033[32m\]'
yellow='\[\033[33m\]'
blue='\[\033[34m\]'
magenta='\[\033[35m\]'
cyan='\[\033[36m\]'
lgray='\[\033[37m\]'

gray='\[\033[90m\]'
lred='\[\033[91m\]'
lgreen='\[\033[92m\]'
lyellow='\[\033[93m\]'
lblue='\[\033[94m\]'
lmagenta='\[\033[95m\]'
lcyan='\[\033[96m\]'
white='\[\033[97m\]'

# (‘0д-)σ
# emoticon="${bold}${cyan}(${lmagenta}‘${lgray}0д${lmagenta}-${cyan})${lgray}σ${reset}"
emoticon="${cyan}>${lmagenta}>${yellow}>${reset}"
####### end

git_branch="${lred}\$(parse_git_branch)${reset}"
mPS1="${debian_chroot:+($debian_chroot)}${bold}${green}\u${lgray}@${bold}(${cyan}\t${white}):${blue}\w ${git_branch}\n${emoticon} "


## Aliases
##########
alias ls='ls -GFhal'
alias sshlog='tail -f /var/log/system.log | grep sshd'
alias sandbox='cd ~/Sites/vagrant/www/sandbox.dev/htdocs/'
alias peer='cd /Users/mishaq/Sites/vagrant/www/peercongress.dev/htdocs/wp-content/themes/peerreviewcongress'
alias generators='cd /Users/mishaq/Sites/vagrant/www/generators.dev/htdocs/'
alias www='cd /Users/mishaq/Sites/vagrant/www'
alias bash_profile='source ~/.bash_profile'
alias qqqqqqqqqqqq='ssh wenglish@10.128.41.187'
###

# Git
#####
if [ -f ~/.bash/.git-completion.bash ]; then
source ~/.bash/.git-completion.bash
source ~/.bash/.git-prompt.sh
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

LIGHTBLUE="\[$(tput setaf 6)\]"
PINK="\[$(tput setaf 5)\]"
RESET="\[$(tput sgr0)\]"
export GOPATH=$HOME/golang
export PS1="${PINK}\W${LIGHTBLUE}\$(parse_git_branch)${RESET}🍕  "
###

# NVM
#####
export NVM_DIR="/Users/mishaq/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
###

# GOLANG
########
export PATH=$PATH:/usr/local/go/bin
###

source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
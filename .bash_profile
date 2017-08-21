alias ls='ls -GFhal'
alias qqqqqqqqqqqq='ssh wenglish@10.128.41.187'
alias plexus='cd ~/Sites/plexus/vccw/plexus'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias detectpings='tcpdump -i en0 icmp and icmp[icmptype]=icmp-echo -vv'

# Git
#####
if [ -f ~/.bash/.git-completion.bash ]; then
source ~/.bash/.git-completion.bash
source ~/.bash/.git-prompt.sh
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PATH="$PATH:$HOME/.composer/vendor/bin"

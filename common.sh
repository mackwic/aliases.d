# Commmon aliases not related to anything

alias -g ...=../..
alias -g ....=../../..
alias -g .....=../../../..

alias -g Hl=' --help |& less -r'

alias -g cd-='cd -'
alias -g cd.='cd ..'

alias pingf='sudo ping -f'

alias c='pygmentize -g -f256'
function cat() {
    [ -z $1 ] && exit 0

    c $* | \less -r
}
alias -g cat='c | \less -r'

# need a parameerized tsocks server
alias -g tpull='tsocks git pull'
alias -g tpush='tsocks git push'
alias -g tsshepi='tsocks ssh mackwic@epimeros.org'

alias -g refresh_aliases='. ~/.aliases'
alias -g rmcdir='cd ..; rmdir $OLDPWD || cd $OLDPWD'

alias -g valg='valgrind -v --leak-check=full --show-reachable=yes --track-origins=yes --malloc-fill=42 --free-fill=43 --log-file=vallog'
alias -g valgv='valg ; v vallog'

alias tlog='sudo tail -f /var/log/syslog'
alias -g top10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

alias -g term2iso='echo '\''Setting terminal to iso mode'\'' ; print -n '\''\e%@'\'
alias -g term2utf='echo '\''Setting terminal to utf-8 mode'\''; print -n '\''\e%G'\'

alias -g insecscp='scp -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'
alias -g insecssh='ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'

# /* vim: ft=bash */

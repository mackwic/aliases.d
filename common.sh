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

function add_alias() {

    help_msg=<<EOF
Usage: add_alias aliasname value [options]

Where
  - aliasname: is a word with only ascii letters
  - value: is a command single quoted
  - options: is one or more of:
    * -c CAT: the category of the alias
    * -g: the alias should be global
EOF

    if [ -z "$*" ] || [ -z $1 ] || [ -z $2 ]
    then
        echo $help_msg
        exit 64
    fi

    aliasname=$1
    value=$2
    shift
    shift

    while [ ! -z $1 ]
    do
        case $1 in
            -c)
                shift
                CAT=$1
                shift
                ;;
            -g)
                G='-g'
                shift
                ;;
            *)
                echo 'Unknown option: ' $1
                echo $help_msg
                exit 64
                ;;
        esac
    done

    aliasstring="alias $G $aliasname='$value'"
    alias $G $aliasname="$value"

    if [ -z $CAT ]
    then
        echo $aliasstring >> ~/.aliases.d/new
    else
        echo $aliasstring >> ~/.aliases.d/$CAT
    fi
}

# /* vim: ft=bash */

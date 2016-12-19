# Commmon aliases not related to anything

alias -g ...=../..
alias -g ....=../../..
alias -g .....=../../../..

alias -g Hl=' --help |& less -r'

alias -g cd-='cd -'
alias -g cd.='cd ..'

alias pingf='sudo ping -f'
alias pig='ping google.fr'

manopt(){ man $1 |sed 's/.\x08//g'|sed -n "/^\s\+-\+$2\b/,/^\s*$/p"|sed '$d;';}

alias -g say_again='\cat ~/.zsh_history | tail -n 2 | head -1 | cut -d ";" -f 2'
alias -g please="sudo say_again"

# need a parameerized tsocks server
alias -g tpull='tsocks git pull'
alias -g tpush='tsocks git push'
alias -g tsshepi='tsocks ssh mackwic@epimeros.org'

alias -g refresh_aliases='for f in ~/.aliases.d/*.sh ; do . $f ; done'
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

    function debug() {
        echo '[DEBUG] ' $*
    }

    function void() {
    }

    if [ ! -z $VERBOSE ] || [ ! -z $V ]
    then
        DEBUG=debug
    else
        DEBUG=void
    fi

    $DEBUG 'START'

    read -r -d '' help_msg <<'EOF'
Usage: add_alias aliasname value [options]

Where
  - aliasname: is a word with only ascii letters
  - value: is a command single quoted
  - options: is one or more of: (options not case sensitive)
    * -c CAT: the category of the alias
    * -g: the alias should be global
    * -d DOC: the documentation for the alias
EOF

[ -z "$help_msg" ] && return 255

    if  [ -z $1 ] || [ -z $2 ]
        [ 1 -le `echo $* | grep -c -P --regex='-(h|(-help))'` ]
    then
        $DEBUG Help detected
        echo -e "$help_msg"
        return 64
    fi

    aliasname=$1
    value=$2
    shift
    shift

    $DEBUG "aliasname=[$aliasname]"
    $DEBUG "value=[$value]"

    # reset variables to 0
    CAT=''
    G=''
    DOC=''

    while [ ! -z $1 ]
    do
        case $1 in
            -h | --help)
                $DEBUG Help detected
                echo -e "$help_msg"
                return 0
                ;;
            -c | -C)
                $DEBUG Category detected
                shift
                CAT=$1
                shift
                ;;
            -g | -G)
                $DEBUG Global flag detected
                G='-g'
                shift
                ;;
            -d | -D)
                $DEBUG Documentation flag detected
                shift
                DOC="$1"
                shift
                ;;
            *)
                $DEBUG Wildcard reached
                echo 'Unknown option: ' $1
                echo -e "$help_msg"
                return 64
                ;;
        esac
    done

    $DEBUG Options OK

    aliasstring="alias $G $aliasname='$value'"
    $DEBUG "aliasstring=[$aliasstring]"
    alias $G $aliasname="$value"
    $DEBUG "Loaded"

    if [ -z $CAT ]
    then
        out='new.sh'
    else
        out="$CAT.sh"
    fi
    out="$HOME/.aliases.d/$out"
    touch "$out"

    $DEBUG "outfile=[$out]"

    [ ! -z $DOC ] && { echo "" >> $out; echo "# $DOC" >> $out }
    echo $aliasstring >> $out

    $DEBUG 'END'
    CAT=$OLD[0]
    G=$OLD[1]
    DOC=$OLD[2]
}

# open multiples files in 3 panes
alias  vs='v -O3'
alias  tree='tree -L 5 -F -C --dirsfirst'
alias  mr='rm'
alias  f='fg'
alias  mosh='LC_ALL=en_GB.UTF-8 mosh'

# copy on the clipboard
alias -g xclip='pbcopy'
alias  p='pushd'
alias  c='cat'
alias -g fil='file'
alias  f='fzf'
alias  vf='v `f`'

# Aliases going to paths

alias -g proj='cd ~/Documents/projects/'
alias -g 'proj#'='cd ~/Documents/projects/C\#'
alias -g proj++='cd ~/Documents/projects/C++'
alias -g projc='cd ~/Documents/projects/C'
alias -g projj='cd ~/Documents/projects/java'
alias -g projm='proj && cd mixed'
alias -g projml='cd ~/Documents/projects/ocaml'
alias -g projp='cd ~/Documents/projects/php'
alias -g projs='~/Documents/projects/js'
alias -g projm='~/Documents/projects/mixed/'
alias -g projrb='cd ~/Documents/projects/ruby'

#function j()
#{
#    [ -z $1 ] && { echo 'usage: j <dest>'; return 1 }
#    dest=$1
#
#    proj_dir=$HOME/Documents/projects/*/*
#
#    echo $proj_dir
#
#    for proj in '$proj_dir'
#    do
#        if [ `dirname $proj` -eq $dest ]
#        then
#            cd $proj
#        fi
#    done
#
#    return 2
#}

# /* vim ft=bash */

# Aliases related to ls

alias -g l=ls
alias -g la='ll -A'
alias -g lad='ls -d .*(/)'
alias -g less=most
alias -g lh='ls -hAl --color=auto'
alias -g ll='ls -lh'
alias llog='sudo /usr/bin/most /var/log/syslog'
alias -g lm='ls | most'
alias -g ls='ls -CF --color=auto'
alias -g lsa='ls -a .*(.)'
alias -g lsbig='ls -flh *(.OL[1,10])'
alias -g lsd='ls -d *(/)'
alias -g lse='ls -d *(/^F)'
alias -g lsl='ls -l *(@)'
alias -g lsnew='ls -rtlh *(D.om[1,10])'
alias -g lsnewdir='ls -rthdl *(/om[1,10]) .*(D/om[1,10])'
alias -g lsold='ls -rtlh *(D.Om[1,10])'
alias -g lsolddir='ls -rthdl *(/Om[1,10]) .*(D/Om[1,10])'
alias -g lss='ls -l *(s,S,t)'
alias -g lssmall='ls -Srl *(.oL[1,10])'
alias -g lsw='ls -ld *(R,W,X.^ND/)'
alias -g lsx='ls -l *(*)'

# /* vim ft=bash */
alias  l1='ls -1'
alias  tre='tree -L 2'

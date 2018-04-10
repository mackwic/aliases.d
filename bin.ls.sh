# Aliases related to ls

alias l=ls
alias la='ll -A'
alias lad='ls -d .*(/)'
alias less=most
alias lh='ls -hAl --color=auto'
alias ll='ls -lh'
alias llog='sudo /usr/bin/most /var/log/syslog'
alias lm='ls | most'
alias ls='ls -CF --color=auto'
alias lsa='ls -a .*(.)'
alias lsbig='ls -flh *(.OL[1,10])'
alias lsd='ls -d *(/)'
alias lse='ls -d *(/^F)'
alias lsl='ls -l *(@)'
alias lsnew='ls -rtlh *(D.om[1,10])'
alias lsnewdir='ls -rthdl *(/om[1,10]) .*(D/om[1,10])'
alias lsold='ls -rtlh *(D.Om[1,10])'
alias lsolddir='ls -rthdl *(/Om[1,10]) .*(D/Om[1,10])'
alias lss='ls -l *(s,S,t)'
alias lssmall='ls -Srl *(.oL[1,10])'
alias lsw='ls -ld *(R,W,X.^ND/)'
alias lsx='ls -l *(*)'

# /* vim ft=bash */
alias  l1='ls -1'
alias  tre='tree -L 2'

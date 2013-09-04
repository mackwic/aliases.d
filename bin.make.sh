# Aliases related to make

alias -g m='make --silent'
alias -g mall='-j5 all'
alias -g mcall='m mclang mall'
alias -g mcall0='m mclang0 mall'
alias -g mcall1='m mclang1 mall'
alias -g mccheck='m mclang check'
alias -g mccheck1='m mclang1 check'
alias -g mclang='CXX=clang++ CXXFLAGS="-std=c++11 -g -ggdb3"'
alias -g mclang0='CXX=clang++ CXXFLAGS="-std=c++11 -g -ggdb3 -w -ferror-limit=3"'
alias -g mclang1='CXX=clang++ CXXFLAGS="-std=c++11 -g -ggdb3 -ferror-limit=3"'
alias -g mgall='m mgcc mall'
alias -g mgall1='m mgcc1 mall'
alias -g mgcc='CXX=g++ CXXFLAGS="-std=c++0x -g -ggdb3"'
alias -g mgcc1='CXX=g++ CXXFLAGS="-std=c++0x -g -ggdb3 -Wfatal-errors"'
alias -g mgcheck='m mgcc check'
alias -g mgcheck1='m mgcc1 check'


# /* vim ft=bash */

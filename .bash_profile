txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

alias ls="ls --color=auto"
alias  l='ls -a'
alias ll='ls -al'
alias  b='cd ..'
alias  s='subl .'
alias  c='clear'
alias sass!='sass --watch scss:css'
alias haml!='ruby ~/Code/Scripts/watch_haml.rb'
alias prj='ruby ~/Code/Scripts/copy_template.rb'
alias pss='python -m SimpleHTTPServer'
alias rss='~/Code/Scripts/ruby_server.rb'
alias fe='cd ~/Code/NSS-FrontEnd'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function branch
{
  git status 2> /dev/null | ruby ~/Code/Scripts/branch.rb
}

PS1="$txtred\w$txtgrn\$(branch)$txtblk >$txtrst "

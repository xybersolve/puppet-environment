# ~/.bashrc

echo "reading file: .bashrc"

# include bash scripts
export PATH=${PATH}:~/bin
# for now
export EDITOR=/usr/bin/vim

alias reports='. /Users/Greg/Sites/Azubu/Server/scripts-development/reflect/reports.sh'
alias goreports='cd /Users/Greg/Sites/Azubu/Server/scripts-development/reflect'
alias ssh-config='cat ~/.ssh/config'
alias show-ssh='cat ~/.ssh/config'

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gpo='git push origin '

alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '

# vagrant short cuts
alias vstat='vagrant status'
alias vgstat='vagrant global status'
alias vdestroy='vagrant destroy -f'
alias vup='vagrant up'

# puppet short cuts
alias pvalidate='puppet parser validate'
alias papply='puppet apply'
alias pmlist='puppet describe --list'

# vim short cuts
alias bashrc='vim ~/.bashrc'
alias bashprofile='vim ~/.bash_profile'
alias zshrc='vim ~/.zshrc'

alias gozsh="exec $(which zsh)"
alias gobash="exec $(which bash)"

# network security commands
alias ports="lsof -n -i4TCP | grep -i 'listen'" 


#. /Users/Greg/bin/git/git-prompt.sh
#. /Users/Greg/bin/git/git-completion.bash

# AWS Completion 
complete -C '/usr/local/aws/bin/aws_completer' aws
export PATH=/usr/local/aws/bin:$PATH


export NVM_DIR="/Users/Greg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

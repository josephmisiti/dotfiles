function mdump()
{
        mongodump --db sqdev --collection $1 --query "{\"sid\" : \"$2\"}" --out $3
}

function mrestart()
{
    rm /usr/local/var/mongodb/mongod.lock 
    launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
    launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
}

alias vi='vim'

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:/usr/local/bin/scala/bin:$PATH"
alias sb='source ~/.bash_profile'
alias bp='vi ~/.bash_profile'
alias top='htop'
alias d3s='python -m SimpleHTTPServer 8888'
alias s='./manage.py runserver'
alias sss='sudo env PYTHONPATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages/:/Library/Python/2.6/site-packages" python manage.py runserver 80'

alias ngstr='launchctl load -w ~/Library/LaunchAgents/org.nginx.plist'
alias ngstp='launchctl unload -w ~/Library/LaunchAgents/org.nginx.plist'
alias ga='git add .'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias mvni='mvn install -Dmaven.test.skip=true'


gdr () { git push origin :$1; }

alias hosts='sudo vi /etc/hosts'
alias h='history'

alias cdsq='cd /Users/josephmisiti/mathandpencil/projects/socialq/socialq/socialqformtool'
alias actsq='source /Users/josephmisiti/mathandpencil/projects/socialq/bin/activate'

alias cdsigma='cd /Users/josephmisiti/mathandpencil/projects/sigma_virtual_env/sigma/sigmatraining'
alias actsigma='source /Users/josephmisiti/mathandpencil/projects/sigma_virtual_env/bin/activate'

alias cdtcb='cd /Users/josephmisiti/mathandpencil/projects/tcb/thecontractbox/thecontractbox'
alias acttcb='source /Users/josephmisiti/mathandpencil/projects/tcb/bin/activate'

#hadoop stuff

alias hcat='hadoop dfs -cat '
alias hls='hadoop dfs -ls '
alias hrmr='hadoop dfs -rmr '
alias hrm='hadoop dfs -rm '
alias hput='hadoop dfs -put '

alias wget='curl -OL '
alias mahout='~/Downloads/trunk/bin/mahout'

alias cdsqml='cd /Users/josephmisiti/mathandpencil/projects/socialq/socialqml'

alias staging='ssh socialq-staging'
alias db='ssh socialq-scaling'

alias redis='redis-server 1> /dev/null &'

function m() {
	if [ "$1" = "" ]
	then
		/usr/bin/mongo/bin/mongo --shell sqdev
	else
		/usr/bin/mongo/bin/mongo --shell "$1"
	fi
}




export PATH=/usr/texbin:/usr/local/lib/python2.7/site-packages:/usr/local/bin:$PATH


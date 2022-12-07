alias l="ls -FG"
alias la="ls -AFG"
alias ll="ls -AFGlo"
alias coala="docker run -ti -v $(pwd):/app --workdir=/app coala/base coala"
#export JAVA_HOME=`/usr/libexec/java_home -v 11`
alias java_home=/usr/libexec/java_home
alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'


export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/sbin:$PATH"

# Install starship prompt - https://starship.rs/
eval "$(starship init bash)"

# Install direnv hook to speed up asdf
eval "$(asdf exec direnv hook bash)"


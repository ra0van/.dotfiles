## alias for flex - referring brew installation instead of factory installation
export PATH="/usr/local/opt/flex/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"


# go development
export GOPATH="${HOME}/go"
# export GOROOT="$(brew --prefix golang)/libexec"
export GOROOT="/usr/local/opt/go@1.16/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/usr/local/opt/go@1.16/bin:$PATH"
# test -d "${GOPATH}/bin:${GOROOT}/bin"
# test -d "${GOPATH}/src/github.com" || mkdir -p "{GOPATH}/src/github.com"


# brew nvm caveats
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export M2_HOME=/Users/vanjarapu.rajasekhar/Downloads/apache-maven-3.8.2
export M2=$M2_HOME/bin
export PATH=$M2:$PATH 



export PATH=${PATH}:/usr/local/mysql/bin

#coreutils
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

#brew php
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

export M2_HOME=/Users/vanjarapu.rajasekhar/Downloads/apache-maven-3.8.2
export M2=$M2_HOME/bin
export PATH=$M2:$PATH 


export PATH=${PATH}:/usr/local/mysql/bin

## alias for flex - referring brew installation instead of factory installation
export PATH="/usr/local/opt/flex/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"


# go development
export GOPATH="${HOME}/"
export GOROOT="/opt/homebrew/opt/go@1.19/libexec"
export PATH="/opt/homebrew/opt/go@1.19/bin:$PATH"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
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

#brew php 7.2
#export PATH="/usr/local/opt/php@7.2/bin:$PATH"
#export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

#brew php 8.1
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/php@8.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@8.1/include"

export M2_HOME=/Users/vanjarapu.rajasekhar/Downloads/apache-maven-3.8.2
export M2=$M2_HOME/bin
export PATH=$M2:$PATH


export PATH=${PATH}:/usr/local/mysql/bin

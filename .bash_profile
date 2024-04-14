# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="~/bin:$PATH:$GOPATH:$GOBIN"
export CDPATH="."

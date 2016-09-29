#!/usr/bin/env bash

shopt -s expand_aliases

export OLDPATH=$PATH

alias stackjs='stack --stack-yaml stack.yaml'
alias stack7='stack --stack-yaml stack-ghc.yaml'

if [[ ! -f "$HOME/.stack/programs/x86_64-linux/ghc-8.0.1/bin/ghc-8.0.1" ]]; then
echo "Rebuilding cache"
stack7 setup --no-terminal
stack7 install alex happy hscolour --no-terminal
echo SETUP GHCJS
stackjs setup --no-terminal

PATH=$OLDPATH
exit 0
else

echo "Reusing cache"

fi

stack7 install alex happy hscolour --no-terminal
PATH=`stack7 path --bin-path 2>/dev/null`:$OLDPATH

stackjs build -j1 --no-terminal

PATH=$OLDPATH

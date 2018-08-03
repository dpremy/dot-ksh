#!/usr/bin/env ksh

# If ksh is the default shell the following line needs to be added to ~/.profile so ksh knows to source this file.
# Otherwise, if ksh is started for a different shell, do the same export but from within that shell
# export ENV=~/.profile

# uncomment next line to enable script debugging
#set -x

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

for kshrc_config in "${HOME}/.ksh/"* ; do
    . "${kshrc_config}"
done

test -f "${HOME}/.kshrc_local" && source "${HOME}/.kshrc_local"

#disable debugging
set +x

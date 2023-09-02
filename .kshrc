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

# source all numbered files in ${HOME}/.ksh/
for kshrc_config in "${HOME}/.ksh/"[0-9]* ; do
  if [ -x "${kshrc_config}" ]; then
      # shellcheck disable=SC1090
    . "${kshrc_config}"
  fi
done

# source all ${HOME}/.kshrc_local files if found
for kshrc_local in ${HOME}/.kshrc_local* ; do
  if [ -x "${kshrc_local}" ]; then
      # shellcheck disable=SC1090
    . "${kshrc_local}"
  fi
done

#disable debugging
set +x

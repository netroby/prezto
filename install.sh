#!/bin/sh
git clone --depth=1 --recursive https://github.com/netroby/prezto.git "${HOME}/.zprezto"
PREPATH="${HOME}/.zprezto/runcoms"
for rcfile in zlogin zlogout zpreztorc zprofile zshenv zshrc; do
    ln -s "${PREPATH}/${rcfile}" "${HOME}/.${rcfile}"
done

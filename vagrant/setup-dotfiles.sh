#!/bin/bash
SRCDIR=/vagrant/dotfiles
DSTDIR=${HOME}

cp ${SRCDIR}/dot_bashrc ${DSTDIR}/.bashrc
cp ${SRCDIR}/dot_git-completion.bash ${DSTDIR}/.git-completion.bash
cp ${SRCDIR}/dot_git-prompt.bash ${DSTDIR}/.git-prompt.bash

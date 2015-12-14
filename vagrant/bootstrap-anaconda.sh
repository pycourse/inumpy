#!/bin/bash

anaconda=Anaconda3-2.4.0-Linux-x86_64.sh

cd /vagrant
if [[ ! -f $anaconda ]]; then
  wget --quiet http://repo.continuum.io/archive/$anaconda
fi

if [[ `which conda` != "${HOME}/opt/anaconda/bin/conda" ]]; then
  chmod +x $anaconda
  ./$anaconda -b -p ${HOME}/opt/anaconda
  cat >> /home/vagrant/.bashrc << END
# add for anaconda install
PATH=/opt/anaconda/bin:\$PATH
END
fi

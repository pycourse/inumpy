#!/bin/bash

sudo timedatectl set-timezone Asia/Taipei

# Update repository.
apt-get update

# For fast video.
apt-get install -y \
  linux-generic \
  virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11

# For desktop environment.
apt-get install -y ubuntu-desktop

# For development environment.
apt-get install -y build-essential git mercurial

# Make the system up-to-date.
apt-get dist-upgrade -y

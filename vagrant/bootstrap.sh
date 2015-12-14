#!/bin/bash

sudo timedatectl set-timezone Asia/Taipei

# Update repository.
apt-get update

# For fast video.
apt-get install -y \
  linux-generic \
  virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
# NOTE: linux-generic contains drm kernel module, which is required for
# vboxvideo kernel module.  Without vboxvideo Ubuntu unity graphics will be
# extremely slow.  See
# http://askubuntu.com/questions/287532/how-do-i-resolve-slow-and-choppy-performance-in-virtualbox.
# "/usr/lib/nux/unity_support_test -p" is a convenient tool to check Ubuntu's
# video acceleration status.

# For desktop environment.
apt-get install -y ubuntu-desktop

# For development environment.
apt-get install -y build-essential git mercurial

# Make the system up-to-date.
apt-get dist-upgrade -y


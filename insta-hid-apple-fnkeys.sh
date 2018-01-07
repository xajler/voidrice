#!/bin/bash

# Change 49 to linux kernel version.
sudo pacman -S linux49-headers
yaourt -S hid-apple-patched-git-dkms


#!/bin/bash

. $LOG

sudo add-apt-repository ppa:fcitx-team/nightly
sudo apt-get update


sudo apt install fcitx5 fcitx5-config-qt fcitx5-gtk fcitx5-qt fcitx5-chinese-addons

im-config -n fcitx5

fcitx5-configtool

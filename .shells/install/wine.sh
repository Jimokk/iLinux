#!/bin/bash

. $LOG

#sudo dpkg --add-architecture i386 &&
#sudo apt-get update &&
#sudo apt install wine &&
#winecfg

if [[ ! -e /usr/share/applications/wine.desktop ]] ; then
    sudo ln -s /usr/share/doc/wine/examples/wine.desktop /usr/share/applications/
    info '正在建立软连接...'
fi

sleep 1

if [[ -e /usr/share/doc/wine/examples/wine.desktop && -d $HOME/.wine ]] ; then 
    info '安装成功'
else 
    danger '安装失败，请手动安装'
fi



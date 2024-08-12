#!/bin/bash

. $LOG

_use_zsh='n'
_reboot='n'


if [[ $SHELL != */zsh ]] ; then
    danger_inline '当前不是zsh，使用zsh可以获得更好的体验，是否切换(N/y):'
    read _use_zsh;
fi



# 如果选择切换为zsh,则执行以下脚本并退出
if [[ $_use_zsh == y ]] ; then
    if [ -e $HOME/.zshrc ] ; then
        echo 'zsh已安装'
    else 
        echo 'zsh为安装，正在安装...'
    fi

    chsh -s /bin/zsh &&
    mkdir -p $HOME/.jimsh &&
    cp $HOME/.zshrc $HOME/.jimsh/zshrc.bak &&
    cp .source/kali/shells/zshrc $HOME/.zshrc &&
    info_inline '切换完成，重启或重新登陆后生效，是否立即重启(N/y)' &&
    read _reboot
    if [[ $_reboot == y ]] ; then
        sudo reboot
    fi
    exit 0    
fi



# 如果不切换为zsh,则原本可能是zsh或bash，由于Kali不提供其它脚本，所以其他无法切换
if [[ $SHELL == */bash ]] ; then
    info '当前是Bash,将切换为Kali Bash'
    sleep 1
    mkdir -p $HOME/.jimsh &&
    cp $HOME/.bashrc $HOME/.jimsh/bashrc &&
    cp .source/kali/shells/bashrc $HOME/.bashrc &&
    source ~/.bashrc > /dev/null &&
    info '切换完成，重启或重新登陆后生效'
elif [[ $SHELL == */zsh ]] ; then
    info '当前是Zsh,将切换为Kali Zsh'
    sleep 1
    mkdir -p $HOME/.jimsh &&
    cp $HOME/.zshrc $HOME/.jimsh/zshrc &&
    cp .source/kali/shells/zshrc $HOME/.zshrc &&
    info '切换完成，重启或重新登陆后生效，是否立即重启(N/y)' &&
    read _reboot
    if [[ $_reboot == y ]] ; then
        sudo reboot
    fi
    exit 0    
else 
    danger '未知的shell客户端，无法执行安装，是否立即重启(N/y)' &&
    read _reboot
    if [[ $_reboot == y ]] ; then
        sudo reboot
    fi
    exit 0    
fi



#cp .source/kali/
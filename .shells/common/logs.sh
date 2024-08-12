#!/bin/bash

# 天蓝色 info
function info() {
	echo -e "\033[36m$1\033[0m"
}

# 橙色 warn
function warn() {
	echo -e "\033[33m$1\033[0m"
}

# 红色 danger
function danger() {
	echo -e "\033[31m$1\033[0m"
}



# 输出不换行
function info_inline() {
	echo -e "\033[36m$1\033[0m\c"
}

function warn_inline() {
	echo -e "\033[33m$1\033[0m\c"
}

function danger_inline() {
	echo -e "\033[31m$1\033[0m\c"
}


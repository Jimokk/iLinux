#!/bin/bash

. $LOG

if [ $USER != 'root' ] ; then
	danger '当前程序需要root权限,请切换至root后重新执行';
	exit;
fi	

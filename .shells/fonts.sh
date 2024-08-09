#!/bin/bash

# 判断是否是root用户，不是的话退出
. $is_root


# 执行操做
function RUN() {
	cp -R $dir_Win11Fonts /usr/share/fonts/ && 
	info 'copying...' &&
	fc-cache -fv && 
	info '缓存更新完成，Win11字体已生效'
}
   

if [ ! -d $dir_Win11Fonts ] ; then
	danger '资源文件不存在,请拉取后重新执行!';
else
	RUN;
fi

exit;

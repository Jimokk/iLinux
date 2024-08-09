#!/bin/bash





# 判断是否是root用户，不是的话退出
. $is_root


exit;

# 执行操做
function RUN() {
	cp -R $dirFN /usr/share/fonts/ && 
	info 'CP完成,开始更新文字缓存' &&
	fc-cache -fv && 
	info '缓存更新完成，Win11字体已生效'
}
   

if [ ! -d $dirFN ] ; then
	 danger '资源文件不存在,请拉取后重新执行!';
else
	RUN;
fi

exit;

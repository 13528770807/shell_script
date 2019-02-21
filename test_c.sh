#!/bin/bash	
sec=$1
date=$(date +%Y%m%d%H%M%S)+"${sec}"s.mp4
path=$(pwd)
record_time=1
# echo {a..z}
count_down(){
	i="${sec}"                 
	for((time=$i;time>0;time--))
	do
		 a=$[$time/60]
		 b=$[$time%60]
		 echo -ne "\r($a:$b)视频拍摄中...      \r"
		 sleep 1
	done
}
	
main(){
	echo $("${path}"/nihao.sh "${second}" "${date}")
	count_down
	echo "已经录制完毕，准备退出..."
	sleep "${record_time}"
	exit 0
}

if [ $# -eq 1 ]; then
	second=$(($1*30))
	main
# elif [ $1 in {a..z} ]; then
# elif [ $(echo {a..z} | grep "$1") != 1 ]; then
	# echo "输入有误"
	# echo "执行格式为:$0(脚本文件) second(秒)"
else
	echo "传入的参数个数为:$#"
	echo "执行格式为:$0(脚本文件) second(秒)"
fi

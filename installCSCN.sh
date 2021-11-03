#/data/data/com.termux/files/usr/bin/bash
#By 2096779623
echo "提示:请不要使用Termux运行teamserver,如果你有root，可以试试!"
echo "升级和安装软件包..."
pkg update -y > /dev/null 2>&1 && pkg i x11-repo wget unzip openjdk-17 -y > /dev/null 2>&1 && pkg i tigervnc -y > /dev/null 2>&1
echo "下载CobaltStrike..."
cd $HOME > /dev/null 2>&1
mkdir CobaltStrikeCN > /dev/null 2>&1
cd ~/CobaltStrikeCN > /dev/null 2>&1
wget -q https://hub.fastgit.org/2096779623/Termux-CobaltStrike/raw/main/CSCN.zip
unzip CSCN.zip > /dev/null 2>&1
chmod 777 -R * > /dev/null 2>&1
echo 添加启动脚本...
echo  vncserver -kill :1 && vncserver :1 && cd ~/CobaltStrikeCN && export DISPLAY=:1 && java -Dfile.encoding=UTF-8 -javaagent:CobaltStrikeCN.jar -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC  -jar cobaltstrike.jar & > $PREFIX/bin/cobaltstrike
chmod 777 $PREFIX/bin/cobaltstrike
echo 你可以执行:cobaltstrike   来启动cobaltstrike！


#/data/data/com.termux/files/usr/bin/bash
echo "升级和安装软件包..."
pkg update -y > /dev/null 2>&1 && pkg i x11-repo wget unzip openjdk-17 -y > /dev/null 2>&1 && pkg i tigervnc -y > /dev/null 2>&1
echo "下载CobaltStrike..."
cd $HOME > /dev/null 2>&1
rm -rf CobaltStrikeCN  > /dev/null 2>&1
rm $PREFIX/bin/cobaltstrikeCN  > /dev/null 2>&1
mkdir CobaltStrikeCN > /dev/null 2>&1
cd ~/CobaltStrikeCN > /dev/null 2>&1
wget -q https://github.utermux.eu.org/UtermuxBlog/Termux-CobaltStrike/releases/download/4.3/CobaltStrikeCN.zip
unzip CobaltStrikeCN.zip > /dev/null 2>&1
chmod 777 -R * > /dev/null 2>&1
echo 添加启动脚本...
echo  "vncserver -kill :1 & vncserver :1 && cd ~/CobaltStrikeCN && export DISPLAY=:1 && java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -javaagent:CSAgent.jar=5e98194a01c6b48fa582a6a9fcbb92d6 -Duser.language=en -jar cobaltstrike.jar $*" > $PREFIX/bin/cobaltstrikeCN
chmod +x $PREFIX/bin/cobaltstrikeCN
echo 你可以执行:cobaltstrikeCN   来启动cobaltstrike！

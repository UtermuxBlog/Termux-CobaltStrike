#/data/data/com.termux/files/usr/bin/bash
pkg i whiptail -y

lang=$(whiptail --title "menu" --menu "Choose language.\n请选择语言" 60 0 \
"1" "English" \
"2" "中文" \
3>&1 1>&2 2>&3)

chinese() {
    echo "升级和安装软件包..."
    pkg update -y > /dev/null 2>&1 && pkg install x11-repo wget unzip openjdk-17 -y && pkg i tigervnc -y > /dev/null 2>&1
    echo "下载CobaltStrike..."
    cd $HOME > /dev/null 2>&1
    rm -rf CobaltStrikeCN  > /dev/null 2>&1
    rm $PREFIX/bin/cobaltstrikeCN  > /dev/null 2>&1
    mkdir CobaltStrikeCN > /dev/null 2>&1
    cd ~/CobaltStrikeCN > /dev/null 2>&1
    wget -q https://github.fastgithub.tk/UtermuxBlog/Termux-CobaltStrike/releases/download/4.3/CobaltStrikeCN.zip
    unzip CobaltStrikeCN.zip > /dev/null 2>&1
    chmod 777 -R * > /dev/null 2>&1
    rm CobaltStrikeCN.zip > /dev/null 2>&1
    echo 添加启动脚本...
    echo  "vncserver -kill :1 & vncserver :1 && cd ~/CobaltStrikeCN && export DISPLAY=:1 && java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -javaagent:CSAgent.jar=5e98194a01c6b48fa582a6a9fcbb92d6 -Duser.language=en -jar cobaltstrike.jar $*" > $PREFIX/bin/cobaltstrikeCN
    chmod +x $PREFIX/bin/cobaltstrikeCN
    echo 你可以执行:cobaltstrikeCN   来启动cobaltstrike！
}

english() {
    echo "Update And Install Packages..."
    pkg update -y > /dev/null 2>&1 && pkg install x11-repo wget unzip openjdk-17 -y > /dev/null 2>&1 && pkg i tigervnc -y > /dev/null 2>&1
    echo "Downloading CobaltStrike..."
    cd $HOME
    rm -rf CobaltStrike  > /dev/null 2>&1
    rm $PREFIX/bin/cobaltstrike
    mkdir CobaltStrike > /dev/null 2>&1
    cd CobaltStrike > /dev/null 2>&1
    wget https://github.com/UtermuxBlog/Termux-CobaltStrike/raw/main/CS.zip
    unzip CS.zip > /dev/null 2>&1
    chmod 777 -R * > /dev/null 2>&1
    rm CS.zip > /dev/null 2>&1
    echo Adding Startup Script...
    echo  "vncserver -kill :1 && vncserver :1 && cd ~/CobaltStrike && export DISPLAY=:1 && java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -jar cobaltstrike.jar $* &" > $PREFIX/bin/cobaltstrike
    chmod 777 $PREFIX/bin/cobaltstrike
    echo You Can Run:'cobaltstrike' start the cobaltstrike!
}

lang=$(whiptail --title "menu" --menu "Choose language.\n请选择语言" 15 60 4 \
"1" "English" \
"2" "中文" \
3>&1 1>&2 2>&3)

case ${lang} in
1) english ;;
2) chinese ;;
esac

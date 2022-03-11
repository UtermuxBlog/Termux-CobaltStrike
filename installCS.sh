#/data/data/com.termux/files/usr/bin/bash
#By 2096779623
echo "Tips:Please use other teamserver,don't Run teamserver On Termux,if you have root,you can try run teamserver!"
echo "Update And Install Packages..."
pkg update -y > /dev/null 2>&1 && pkg i x11-repo wget unzip openjdk-17 -y > /dev/null 2>&1 && pkg i tigervnc -y > /dev/null 2>&1
echo "Downloading CobaltStrike..."
cd $HOME
rm -rf CobaltStrike  > /dev/null 2>&1
rm $PREFIX/bin/cobaltstrike
mkdir CobaltStrike > /dev/null 2>&1
cd CobaltStrike > /dev/null 2>&1
wget https://github.com/UtermuxBlog/Termux-CobaltStrike/raw/main/CS.zip
unzip CS.zip > /dev/null 2>&1
chmod 777 -R * > /dev/null 2>&1
echo Adding Startup Script...
echo  "vncserver -kill :1 && vncserver :1 && cd ~/CS && export DISPLAY=:1 && java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -jar cobaltstrike.jar $* &" > $PREFIX/bin/cobaltstrike
chmod 777 $PREFIX/bin/cobaltstrike
echo "You Can Run:'cobaltstrike' start the cobaltstrike!

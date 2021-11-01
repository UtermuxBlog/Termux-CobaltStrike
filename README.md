# Termux-CobaltStrike



#INSTALLATION:




`pkg i wget -y`
`wget https://raw.githubusercontent.com/2096779623/Termux-CobaltStrike/main/installCS.sh`
`chmod 777 installCS.sh`
`./installCS.sh`



#StartUp




ZSH:
`echo "export DISPLAY=:1" >> ~/.zshrc > /dev/null 2>&1 `
Bash:
`echo "export DISPLAY=:1" >> ~/.bashrc > /dev/null 2>&1`



Then:



`vncserver :1 > /dev/null 2>&1 && java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -jar cobaltstrike.jar $*`

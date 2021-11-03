# Termux-CobaltStrike



[![GitHub license](https://img.shields.io/badge/license-MIT-brightgreen)](https://github.com/2096779623/termux-CobaltStrike/blob/main/LICENSE) 


#安装:




`pkg i wget -y`  
`wget https://raw.githubusercontent.com/2096779623/Termux-CobaltStrike/main/installCSCN.sh`  
`chmod 777 installCSCN.sh`  
`./installCSCN.sh`  



#启动   




ZSH:  
`echo "export DISPLAY=:1" >> ~/.zshrc > /dev/null 2>&1 `  
Bash:  
`echo "export DISPLAY=:1" >> ~/.bashrc > /dev/null 2>&1`  



然后:  



`vncserver :1 > /dev/null 2>&1 && java -Dfile.encoding=UTF-8 -javaagent:CobaltStrikeCN.jar -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC  -jar cobaltstrike.jar`

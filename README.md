# Termux-CobaltStrike


[简体中文](https://github.com/2096779623/termux-CobaltStrike/blob/main/READMECN.md)   

[![GitHub license](https://img.shields.io/badge/license-MIT-brightgreen)](https://github.com/2096779623/termux-CobaltStrike/blob/main/LICENSE) 


  
- [✓] CobaltStrike sessions to Metasploit Framework  



- [X] Teamserver On Termux(no root)  



- [✓] Load And Use Scripts  





- [?] On XSDL  




#INSTALLATION:




`pkg i wget -y`  
`wget https://raw.githubusercontent.com/2096779623/Termux-CobaltStrike/main/installCS.sh`  
`chmod 777 installCS.sh`  
`./installCS.sh`  



#StartUp  



`vncserver :1 && java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -jar cobaltstrike.jar $*`

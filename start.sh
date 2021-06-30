#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x dulang
screen -dmS ls 
POOL=stratum+tcp://stratum-eu.rplant.xyz:3350
WALLET=VQEPqKj8wS8pSKXjLnCWEhgXkAXNQgEQoa.kuy
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
PROXY=socks5://woiden_kidonew90:aing1234@163.172.214.196:8080
./dulang -a yespower -o $POOL -u $WALLET -p $WORKER -t 2 -x $PROXY

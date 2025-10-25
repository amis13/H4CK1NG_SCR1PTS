#!/bin/bash

for ip in $(nmap -sn 192.168.1.1/24 | awk '/Nmap scan report/{print $5}'); do
    TTL=$(ping -c 1 -W 1 $ip | grep -o "ttl=[0-9]*" | cut -d= -f2)

    if [[ -z "$TTL" ]]; then
        echo "$ip no responde al ping"
        continue
    fi

    if [[ $TTL -le 64 ]]; then
        echo -e "$ip tiene TTL=$TTL → Probablemente Linux"
    elif [[ $TTL -le 128 ]]; then
        echo -e "$ip tiene TTL=$TTL → Probablemente Windows"
    else
        echo -e "$ip tiene TTL=$TTL → TTL inusual o dispositivo de red"
    fi
done

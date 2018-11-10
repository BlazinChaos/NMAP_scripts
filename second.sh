#!/bin/bash

nmap -nvv -Pn -sSV -T1 -p$(cat /root/$1_T.xml | grep portid | grep protocol=\"tcp\" | cut -d'"' -f4 | paste -sd "," -) --version-intensity 9 -A -oA /root/$1_T_DETAILED $1

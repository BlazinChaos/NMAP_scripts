#!/bin/bash

nmap -Pn --top-ports 1000 -sU --stats-every 3m --max-retries 1 -T3 -oA /root/$1_U $1

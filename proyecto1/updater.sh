#!/bin/bash

trafico=`ping -c 3 www.google.com | tail -1 | grep -oP "[0-9]+.[0-9]+" | tail -3 | head -1`
hora=$(( `date +%s` * 1000 ))

# A la base de datos
mysql -e "USE monitor; INSERT INTO monitor (hora,trafico) VALUES ($hora,$trafico);" -u monitor -ppassword

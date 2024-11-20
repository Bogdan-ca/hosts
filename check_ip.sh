#!/bin/bash
function check_ip {
	local host=$1
	local ip=$2
	local dns_server=$3
	nslookup $host $dns_server | grep -q "$ip"
	if [ $? -eq 0 ]; then
		echo "Adresa IP valida pentru $hosts"
	else
		echo "Adresa IP invalida pentru $hosts"
	fi
check_ip $1 $2 $3

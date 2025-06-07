#!/usr/bin/env bash

THRESHOLD=80
LOGFILE="$HOME/disk_alert.log"

# Pega uso em % da particao raiz (remove o %)
USAGE=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

if ((USAGE > THRESHOLD)); then
	echo "$(date '+%F %T') - ALERTE: uso de disco em ${USAGE}%" | tee -a "$LOGFILE"
else
	echo "$(date '+%F %T') - OK: uso de disco em ${USAGE}%" >> "$LOGFILE"
fi

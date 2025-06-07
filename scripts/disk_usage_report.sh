#!/usr/bin/env bash

# Onde guardar o log
LOGFILE="$HOME/disk_usage.log"

# Cabeçalho com data/hora
{
echo "===== $(date '+%Y-%m-%d %H:%M:%S') ====="
df -h
echo ""
} >> "$LOGFILE"

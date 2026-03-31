#!/bin/bash

# --- Variables ---
STUDENT="Akshat"
APP="Git"

OS_KERNEL=$(uname -r)
CURRENT_USER=$(whoami)
SYS_UPTIME=$(uptime -p)
CURRENT_DATE=$(date)
LINUX_DISTRO=$(lsb_release -d | cut -f2)

# --- Output ---
cat <<EOF
===== Open Source Audit =====
Name: $STUDENT
Software: $APP
Kernel: $OS_KERNEL
User: $CURRENT_USER
Uptime: $SYS_UPTIME
Date: $CURRENT_DATE
Distro: $LINUX_DISTRO
EOF
#!/bin/bash

set -e

echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -sr)"
echo "Architecture: $(uname -m)"

echo "Uptime: $(uptime -p)"

if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "Operating System: ${PRETTY_NAME}"
fi

echo "CPU: $(nproc) logical processor(s)"
echo "Memory:"
free -h

echo "Disk Usage:"
df -h /
echo "IP Addresses:"
hostname -I

echo "System information completed"

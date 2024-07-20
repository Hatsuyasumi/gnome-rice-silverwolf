#!/usr/bin/env bash
## Bash script to start system monitor 0.1

sleep 5

killall conky

conky -c ~/.conky/SystemMon/conky-sysinfo

#!/bin/bash
echo "------------------------------ CPU Statistics ------------------------------" 
top -n 1 | grep "Cpu"
echo
echo "------------------------------ Memory Statistics ------------------------------" 
free -h
echo
echo "------------------------------ Disk Usage Statistics ------------------------------" 
df -h --total | grep "total"
echo
echo "------------------------------ Top 5 CPU process Statistics ------------------------------" 
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo
echo "------------------------------ Top 5 Memory process Statistics ------------------------------" 
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6
#!/bin/bash

# 阈值定义
load_threshold=2.0  # 系统负载阈值，根据需要进行调整

# 获取当前系统负载
current_load=$(cat /proc/loadavg | awk '{print $1}')
current_time=$(date +"%Y-%m-%d %H:%M:%S")
#echo "当前时间：$current_time, 系统负载：$current_load" >> /root/rebot_dir/cpu_usage.txt

# 检查系统负载是否超过阈值
if (( $(echo "$current_load >= $load_threshold" | bc -l) )); then
  echo "当前时间：$current_time, 系统负载：$current_load" >> /root/rebot_dir/cpu_usage.txt
  top -b -n1 -w 512 | head -n 12 >> /root/rebot_dir/cpu_usage.txt
  sudo reboot
fi
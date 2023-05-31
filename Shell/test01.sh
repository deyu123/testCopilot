# 获取当前cpu使用率
cpu_usage=$(top -l 1 | grep "CPU usage" | awk '{print $3}' | cut -d'%' -f1)

# 设置cpu使用率阈值
threshold=80

# 判断当前cpu使用率是否超过阈值
if [ $cpu_usage -gt $threshold ]; then
  # 如果超过阈值则重启
  sudo reboot
fi


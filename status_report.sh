#!/bin/bash
# ==============================================================
# Скрипт: status_report.sh
# Использование: ./status_report.sh <СЛУЖБА> <СТАТУС>
# ==============================================================

# 1. Получаем входные аргументы
SERVICE_NAME="$1"
SERVICE_N="$2"
DATE_TIME=$(date +"%Y-%m-%d %H:%M:%S")
echo "=============================="
echo "$DATE_TIME"
echo "$SERVICE_NAME"
if [ "$2" = "UP" ]; then
    echo "fgbhgff"
elif [ "$2" = "DOWN" ]; then
echo "Не запустился"
else
echo "Такой команды не существует"
exit 1
fi
exit 0

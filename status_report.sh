#!/bin/bash
# ==============================================================
# Скрипт: status_report.sh
# Использование: ./status_report.sh <СЛУЖБА> <СТАТУС>
# ==============================================================

# 1. Получаем входные аргументы
SERVICE_NAME="$1"
systemctl status docker > /dev/null 2>&1
if [ $? -eq 0  ]; then
    echo "fgbhgff"
elif [ "$2" = "DOWN" ]; then
echo "Не запустился"
else
echo "Такой команды не существует"
exit 1
fi
exit 0

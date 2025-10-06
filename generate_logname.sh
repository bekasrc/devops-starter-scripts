#!/bin/bash
# ==============================================================
# Скрипт: generate_logname.sh
# Использование: ./generate_logname.sh <Название службы>
# ==============================================================
SERVICE_NAME=$1
BASE_PATH=$2
MODE=$3
DATE_TIME=$(date +"%Y-%m-%d")
LOG_FILENAME="$SERVICE_NAME"_"$DATE_TIME".log
if [ -z "$1" ]; then
    echo "Ошибка: Пожалуйста, укажите имя службы."
    exit 1
fi
if [ ! -d "$2" ]; then
    echo "Ошибка: Базовая папка $2 не найдена."
    exit 1
fi
if [ "$3" = "prod" ]; then
    echo "ВНИМАНИЕ: Запуск в ПРОДАКШЕН режиме!"
    else 
    echo "Запуск в DEV режиме. Безопасно."
fi
echo "УСПЕХ: Все проверки пройдены."
echo "Файл лога будет создан в: $BASE_PATH/$LOG_FILENAME"

exit 0

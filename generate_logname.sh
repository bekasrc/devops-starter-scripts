SERVICENAME=$1  # Название службы (например, Nginx)
# 2. Получаем дату и время
DATE_TIME=$(date +"%Y-%m-%d")
LOG_FILENAME=$1_$DATE_TIME.log
echo "$LOG_FILENAME"
touch "$LOG_FILENAME"
# Успешное завершение скрипта
exit 0

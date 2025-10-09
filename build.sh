systemctl status docker > /dev/null 2>&1
if [ $? -eq 0 ]; then
echo "Проверка: Сервис Docker активен. ✅"
echo "====================================="
echo "Сборка образа:Сборка образа: my-project:lates"
docker build -t my-project:latest .
exit 0
else
echo "Проверка: ОШИБКА. Сервис Docker не найден или не активен. ❌"
echo "====================================="
echo "Сборка образа невозможна. Скрипт остановлен."
exit 1
fi


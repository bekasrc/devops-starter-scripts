function check_arguments {
if [ $# -lt 2 ]; then
echo "❌ ОШИБКА: Требуется 2 аргумента (Пользователь и Пароль)."
retorn 1
else
return 0
fi
}
function configure_database {
echo "База данных настроена для пользователя: $1"
return 0
}
check_arguments "@"
if [ $? -eq = 0 ]; then
echo "✅ Ввод пользователя проверен успешно."
configure_database "$1" "$2"

exit 0
else
echo "❌ Настройка отменена. Проверьте ввод."
exit 1
fi

function build_image {
    # Аргумент $1 здесь - это имя образа (например, "my-project:v1")
    IMAGE_NAME="$1"

    echo "--- Начинаю сборку образа: $IMAGE_NAME ---"
    
    docker build -t "$IMAGE_NAME" .

    # Возвращаем код завершения команды docker build
    return $? 
}

# 2. Вызов функции в основной части скрипта
build_image "my-project:v1" 

# 3. Проверка результата сборки
if [ $? -eq 0 ]; then
    echo "Сборка успешна!"
fi

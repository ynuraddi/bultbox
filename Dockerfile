# Используем несуществующий базовый образ
FROM nonexistent:image

# Установка Go (хотя образ не существует)
RUN apt-get update && apt-get install -y golang-go

# Копируем исходники
COPY . /app
WORKDIR /app

# Пытаемся собрать проект с ошибками
RUN go build -o app main.go

# Еще одна ошибка - неправильная команда
RUN nonexistent-command --fail

EXPOSE 8080

# Попытка запустить несуществующий файл
CMD ["./nonexistent-binary"]

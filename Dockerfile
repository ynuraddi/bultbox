# Используем официальный образ Go
FROM noneexist:1.21-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем go.mod и go.sum (если есть)
COPY go.mod ./

# Загружаем зависимости
RUN go mod download

# Копируем исходный код
COPY . .

# Собираем приложение
RUN go build -o app main.go

# Открываем порт 8080
EXPOSE 8080

# Запускаем приложение
CMD ["./app"]

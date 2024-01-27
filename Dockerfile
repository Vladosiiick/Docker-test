# Використовуємо офіційний образ Nginx
FROM nginx:latest

# Копіюємо ваш конфігураційний файл в контейнер
COPY nginx_config.conf /etc/nginx/conf.d/default.conf

# Вказуємо, що слід використовувати порт 80
EXPOSE 80

# Запускаємо Nginx в foreground режимі
CMD ["nginx", "-g", "daemon off;"]


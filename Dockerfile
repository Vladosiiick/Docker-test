# Використовуємо офіційний образ Nginx з Docker Hub
FROM nginx:latest

# Копіюємо наш конфігураційний файл у відповідну директорію
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копіюємо файли сайту в кореневу директорію Nginx
COPY index.html /usr/share/nginx/html/index.html

# Вказуємо експозицію порту 80
EXPOSE 80

# Команда для запуску Nginx при запуску контейнера
CMD ["nginx", "-g", "daemon off;"]

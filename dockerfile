FROM ubuntu:latest
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y apache2 && \
    rm /var/www/html/index.html && cp /app/index.html /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 82

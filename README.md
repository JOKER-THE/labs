<p align="center">
    <h1 align="center">Лабораторные работы</h1>
</p>


Docker
-------------------

### Запускаем hello-world контейнер:

1. Открыть консоль и запустить первый контейнер hello-world:
~~~
docker run hello-world
~~~

### Запуск простого nginx в docker-контейнере:

1. Открыть терминал и написать:
~~~
docker run --name mynginx1 -p 81:80 -d nginx:alpine
~~~
2. Запустится контейнер с именем mynginx1. Можно увидеть его в списке контейнеров:
~~~
docker ps
~~~
3. Можно удостовериться в работе контейнера, открыв в браузере адрес:
~~~
http://localhost:81/
~~~
4. Останавливаем контейнер:
~~~
docker stop mynginx1
~~~
5. Наблюдаем его в списке остановленных контейнеров (обратите внимание на флаг -a):
~~~
docker ps -a
~~~
6. Удаляем свежесозданный контейнер:
~~~
docker rm mynginx1
~~~
P.S. Также можно запускать контейнер с автоматическим его удалением после остановки:
~~~
docker run --rm --name mynginx1 -p 81:80 -d nginx:alpine
~~~

### Запуск nginx в docker-контейнере с хостингом своей папки:

1. Создаём папку проекта и переходим в неё:
~~~
mkdir -p ~/Dev/docker/docker-nginx/
cd ~/Dev/docker/docker-nginx/
~~~
2. Создаём папку html и файл index.html в ней:
~~~
mkdir html
nano html/index.html:
~~~
с тестовым содержимым:
~~~
<html>
<body>
<h1>Hello docker + nginx!</h1>
</body>
</html>
~~~
3. Запускаем контейнер:
~~~
docker run --rm --name mynginx2 --mount type=bind,source=`pwd`/html,target=/usr/share/nginx/html -p 81:80 -d nginx:alpine
~~~
4. Проверяем контейнер, открыв в браузере адрес:
~~~
http://localhost:81/
~~~
5. Останавливаем контейнер:
~~~
docker stop mynginx2
~~~

### Build'им свой образ контейнера с nginx с помощью файла Dockerfile:

1. Создаём папку проекта:
~~~
mkdir -p ~/Dev/docker/docker-nginx-build/
~~~
2. Создаём папку html и файл index.html с содержимым:
~~~
Hello from dockerfile nginx!
~~~
3. Создаём файл Dockerfile:
~~~
nano ~/Dev/docker/docker-nginx-build/Dockerfile
~~~
с содержимым:
~~~
FROM nginx:alpine
COPY html /usr/share/nginx/html
~~~
4. Build'им образ docker'а:
~~~
docker build -t mynginx_image1 .
~~~
5. Запускаем контейнер на основе созданного образа:
~~~
docker run --rm --name mynginx3 -p 82:80 -d mynginx_image1
~~~
6. Проверяем контейнер, открыв в браузере адрес:
~~~
http://localhost:82/
~~~
7. Останавливаем контейнер:
~~~
docker stop mynginx3
~~~
P.S.
Созданный образ можно увидеть в списке образов:
~~~
docker image ls -a
~~~

### Build'им свой образ контейнера с nginx с помощью файла docker-compose:

1. Создаём папку проекта:
~~~
mkdir -p ~/Dev/docker/docker-compose-nginx/
~~~
2. Создаём файл docker-compose.yml:
~~~
vim ~/Dev/docker/docker-compose-nginx/docker-compose.yml
~~~
с содержимым:
~~~
version: '3'

services:
    web:
        image: 'nginx:alpine'
        volumes:
            - ./html:/usr/share/nginx/html
        ports:
            - '81:80'
~~~
3. Создаём папку html и файл index.html:
~~~
vim ~/Dev/docker/docker-compose-nginx/html/index.html
~~~
с содержимым:
~~~
<html>
Hello from dockerfile nginx!
</html>
~~~
4. Запускаем контейнер:
~~~
docker-compose up
~~~
5. Проверяем контейнер, открыв в браузере адрес:
~~~
http://localhost:81/
~~~
6. Можем наблюдать созданный контейнер в списке:
~~~
docker-compose ps
~~~
7. Можем подключиться к контейнеру в командной строке:
~~~
docker-compose exec web sh
~~~
8. Удостоверимся, что подключились к контейнеру:
~~~
cat /etc/*-release
~~~
9. Останавливаем с удалением контейнер:
~~~
docker-compose down
~~~

### Связка контейнеров nginx + php-fpm в docker-compose:

1. Создаём папку проекта:
~~~
mkdir -p ~/Dev/docker/docker-compose-phpnginx/
~~~
2. Создаём файл docker-compose.yml:
~~~
vim ~/Dev/docker/docker-compose-phpnginx/docker-compose.yml
~~~
с содержимым:
~~~
version: '3'

services:
    web:
        image: 'nginx:alpine'
        volumes:
            - ./src:/app
            - ./conf/nginx.conf:/etc/nginx/nginx.conf
            - ./conf/default.conf:/etc/nginx/conf.d/default.conf
        ports:
            - '83:80'
    php-fpm:
        image: 'php:7.3-fpm-alpine'
        volumes:
            - ./src:/app
~~~
3. Создаём папку conf и файлы nginx.conf, default.conf в ней:
~~~
vim ~/Dev/docker/docker-compose-phpnginx/conf/nginx.conf
~~~
с содержимым:
~~~
user  nginx;
worker_processes  4;

error_log  /var/log/nginx/error.log warn;
pid        /var/run/nginx.pid;

events {
    worker_connections  1024;
}

http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;

    #access_log  /var/log/nginx/access.log;
    # Switch logging to console out to view via Docker
    access_log /dev/stdout;
    error_log /dev/stderr;

    sendfile        on;
    keepalive_timeout  65;
    
    include /etc/nginx/conf.d/*.conf;
    include /etc/nginx/sites-available/*.conf;
}
~~~
и
~~~
vim ~/Dev/docker/docker-compose-phpnginx/conf/default.conf
~~~
с содержимым:
~~~
server {
    listen 80 default_server;
    
    server_name localhost;
    root /app;
    index index.php index.html;

    error_log /var/log/nginx/error.log;
    access_log /var/log/nginx/access.log;

    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_pass php-upstream;
        fastcgi_index index.php;
        fastcgi_buffers 16 16k;
        fastcgi_buffer_size 32k;
        fastcgi_read_timeout 600;
        include fastcgi_params;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param PATH_INFO $fastcgi_path_info;
    }

    location ~ /\.ht {
        deny all;
    }
}
upstream php-upstream {
    server php-fpm:9000;
}
~~~
4. Создаём папку src и файл index.php:
~~~
vim ~/Dev/docker/docker-compose-phpnginx/src/index.php
~~~
с содержимым:
~~~
<?php
echo 'Hello';
phpinfo();
~~~
5. Запускаем контейнер:
~~~
docker-compose up
~~~
6. Проверяем контейнер, открыв в браузере адрес:
~~~
http://localhost:83/
~~~
7. Останавливаем с удалением контейнер:
~~~
docker-compose down
~~~


MODX
-------------------
Login: joker
Pass: pass15243
Database: db_modx_labs.sql

1. Установить MODX Revolution версии 2.3.3pl и развернуть тестовый сайт
2. Использовать любой простейший шаблон-образец на базе Bootstrap3 в качестве Frontend'а
3. Создать личный кабинет для пользователя (Backend)
4. Использовать шаблон-образец AdminLTE в качестве Backend'а


NodeJs
-------------------

1. Установить NodeJS
2. Установить глобально ElectronJS:
~~~
npm i -g electron
~~~
3. Запускаем!

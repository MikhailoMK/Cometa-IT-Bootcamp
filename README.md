Это файл README.md, который будет обновляться с каждым весомым обновлением репозитория. Сюда будут записываться различные подсказки по использованию того, то происходт в каждой из папок репозитория.

1) Папка LAB_1: в этой папке выполнялась лабораторная работа по работе со скриптами, правами и сложными запросами в OL 7.9 (внутри есть текстовый документ с описанием всего, что там есть).

2) BRANCH: в этой папке выполнялась небольшая практика с ветками в Git, внутри папки 2 текстовых файла, в которых всё описано.

3) dock: в этой папке хранятся докер-файлы, при помощи которых ставится PostgreSQL, Python и его дополнения необходимые для создания сайта. По-сути всё, что нужно сделать: запустить docker compose up, дождаться установки, перейти на страницу в браузере.

4) В папке LAB_4 есть файл ТЗ.md, в нём описано задание. Тут же укажу что и для чего:
     = inventory - в этом файле записаны хосты
     = ping.png - скрин удачного подключения к хостам
     = nginx.yml - плейбук для установки и запуска nginx
     = html.yml - плейбук для копирования заданной html-страницы в нужную директорию для её деплоя
     = postgre.yml - плейбук для установки PostgreSQL 16, создания БД OSCAR, пользователя OSCAR
     = docker.yml - плейбук для установки докера и необходимых зависимостей
     = oracle.yml - плейбук для установки Oracle Database 21c XE с DockerHub
     = project.yml - плейбук для запуска образа прошлого проекта

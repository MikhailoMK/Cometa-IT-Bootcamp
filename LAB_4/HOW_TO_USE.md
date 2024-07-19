1. Начнём с первого файла (inventory). inventory - в этом файле записаны хосты.

2. Нужно было проверить соединение между сервером и хостами. Для этого была использована команада "ansible -i inventory ec2_servers -m ping". Её результат можно увидеть в ping.png
   
3. nginx.yml - плейбук для установки и запуска nginx. Для запуска "ansible-playbook -i inventory nginx.yml".
   
4. html.yml - плейбук для копирования заданной html-страницы в нужную директорию для её деплоя. Для запуска "ansible-playbook -i inventory html.yml".
   
5. postgre.yml - плейбук для установки PostgreSQL 16, создания БД OSCAR, пользователя OSCAR. Для запуска "ansible-playbook -i inventory postgre.yml".
   
6. docker.yml - плейбук для установки докера и необходимых зависимостей. Для запуска "ansible-playbook -i inventory docker.yml".
   
7. oracle.yml - плейбук для установки Oracle Database 21c XE с DockerHub. Для запуска "ansible-playbook -i inventory oracle.yml".
   
8. project.yml - плейбук для запуска образа прошлого проекта. Для запуска "ansible-playbook -i inventory project.yml".

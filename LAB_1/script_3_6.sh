#!/bin/bash

if [ $# -ne 2 ]; then			        #Проверяет правильность Проверяет количество записей после ./script
  echo INCORRECT CONFIGURATION		#Выводит ошибку
  exit					                  #Завершает работу скрипта
fi					                      #Завершает условный оператор

if [ ! -e $1 ]; then			#Проверяет существует ли файл, который указываем после ./script
  echo FILE NOT FOUND			#Выводит ошибку
  exit					          #Завершает работу скрипта
fi					              #Завершает условный оператор		

NAME=$(basename $1 | cut -d '.' -f 1)_$(date +%Y_%m_%d)		  #В переменную записываем новое имя с датой, из абсолютного пути к файлу убираем его путь, чтобы осталось только имя, а также убираем расширение

tar -czvf $2/$NAME.tar.gz -C $(dirname $1) $(basename $1)	  #Выполняем архивацию с указанием нужного пути и имени. -c нужно для создания архива, -z для сжатия при помощи gzip, -v для того, чтобы видеть какой файл заархивировался, -f для задания имени архиву

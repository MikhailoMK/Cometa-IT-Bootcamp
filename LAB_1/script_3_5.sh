#!/bin/bash

if [ $# -ne 1 ]; then		  #Проверяет количество записей после ./script (должна быть 1 запись, т.е. имя файла, если не 1, то ошибка)
  echo WHERE FILE_NAME?		#Выводит ошибку
  exit				            #Завершает работу скрипта
fi				                #Завершает условный оператор

if [ ! -e $1 ]; then		  #Проверяет существует ли файл, который указываем после ./script
  echo NOT EXIST		      #Выводит ошибку
  exit				            #Завершает работу скрипта
else				              #Иначе
  echo EXIST			        #Выводит ответ
fi				                #Завершает условный оператор

if [ -d $1 ]; then		    #Проверяет является ли файл директорией
  echo DIRECTORY		      #Выводит ответ
elif [ -f $1 ]; then		  #Проверяет является ли файл просто файлом
  echo FILE			          #Выводит ответ
else				              #Иначе
  echo OTHER			        #Выводит ответ
fi				                #Завершает условный оператор

echo `stat -c %A $1`		  #Выводит права доступа файла (%A выводит в формате -rwxrwxrwx, если использовать %a, то будет использовать формат 777)

echo `stat -c %s $1`		  #Выводит размер файла в байтах

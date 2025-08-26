#!/bin/bash

extension=""
replacement=""
files=()

# Парсим все аргументы
while [[ $# -gt 0 ]]; do
    case $1 in
	--file)
      	    files+=("$2"); 
	shift 2 
	;;
	--extension) 
	    extension="$2"; 
	shift 2 
	;;
        --replacement) 
	    replacement="$2"; 
	shift 2 
	;;
        *) 
	shift 
	;;
    esac
done

# Обрабатываем массив с файлами 
for file in "${files[@]}"; do
# Получаем текущее расширение файла
current_ext="${file##*.}"
								    
# Если текущее расширение совпадает с указанным для замены
if [ "$current_ext" = "$extension" ]; then
# Меняем расширение
echo "${file%.*}.$replacement"
else
# Оставляем как есть
echo "$file"
fi
done














				
					

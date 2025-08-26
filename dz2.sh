#!/bin/bash

echo "Введите целое положительное число:"
read number

# Проверяем, что введено число
if ! [[ "$number" =~ ^[0-9]+$ ]] || [ "$number" -eq 0 ]; then
	    echo "Ошибка: введите целое положительное число"
	        exit 1
fi

# Определяем половины в зависимости от четности
if [ $((number % 2)) -eq 0 ]; then
	    # Четное число
	 half=$((number / 2))
         second_half=$((half + 1))
else
	    # Нечетное число - игнорируем среднее
	 half=$(( (number - 1) / 2 ))
	 second_half_start=$((half + 2))  # Пропускаем среднее число
					 
						 
product=1
sum=0

# ПРОИЗВЕДЕНИЕ первой половины чисел
for ((i=1; i<=first_half_end; i++)); do
	    product=$((product * i))
	       echo -n "$i "
		    if [ $i -lt $first_half_end ]; then
			            echo -n "* "
				        fi
				done
				echo "= $product"

# СУММА второй половины чисел
for ((i=second_half_start; i<=number; i++)); do
	    sum=$((sum + i))
	       echo -n "$i "
		    if [ $i -lt $number ]; then
		                echo -n "+ "
				        fi
				done
				echo "= $sum"

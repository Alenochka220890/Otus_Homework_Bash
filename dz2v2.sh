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
first_half_end=$half
second_half_start=$((half + 1))
else
# Нечетное число - пропускаем среднее число
half=$(( (number - 1) / 2 ))
first_half_end=$half
second_half_start=$((half + 2))  # Пропускаем среднее число
fi

mult=1
sum=0

# Произведение первой половины чисел
for ((i=1; i<=first_half_end; i++)); do
	mult=$((mult * i))
done

# Сумма второй половины чисел
for ((i=second_half_start; i<=number; i++)); do
  sum=$((sum + i))
done
							
echo "mult: $mult"
echo "sum: $sum"

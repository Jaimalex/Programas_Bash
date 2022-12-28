#!/bin/bash
# Autor: Jaime Sendín
# Variables, parámetros y comandos con funciones en scripting.

aritmethic_operations_function() {
	
	num1=2
        num2=2

	echo "Operaciones aritméticas "
	echo $num1 "+" $num2 "=" $(($num1 + $num2))
	echo $num1 "-" $num2 "=" $(($num1 - $num2))
	echo $num1 "*" $num2 "=" $(($num1 * $num2))
	echo $num1 "/" $num2 "=" $(($num1 / $num2))
	
	echo Operaciones de comparación 
	echo "0: False. 1: True"
	echo "¿$num1 > $num2?" $(($num1 > $num2))
	echo "¿$num1 < $num2?" $(($num1 < $num2))
	echo "¿$num1 >= $num2?" $(($num1 >= $num2))
	echo "¿$num1 <= $num2?" $(($num1 >= $num2))
	
	echo Bucle de iteraciones con "num1: $num1," hasta 9.
	while [ $num1 -lt 10 ] 
	do 
		echo num1 ha tomado el valor $num1
		num1=$((num1 + 1))
	done
}

# Los parámetros para usar en la función parameters_function() se deben coger fuera de las funciones($1, $2, $#, $*) y asignarlos a variables creadas por nosotros(param1, param2, num_param, send_param) 
param1=$1 # $1 = primer parámetro introducido por terminal
param2=$2 # $2 = segundo parámetro introducido por terminal
num_param=$# # $# = Cantidad de parámetros introducidos por terminal
send_param=$* # $* = Todos los parámetros introducidos por terminal
parameters_function() {

	echo "Su primer parámetro ha sido $param1 y su segundo parámetro ha sido $param2"
	echo "La cantidad de parámetros enviados ha sido $num_param"
	echo "Los parámetros enviados han sido $send_param"
}

command_function() {
	
	echo "Por cierto, su ubicación actual en el sistema es" $(pwd) ." ¿O no?"
	echo "El listado de los archivos de la ubicación en la que se encuentra es " $(find -maxdepth 1 -type f) # Imprime en una misma línea (Fuera de las comillas del echo)
	echo "El listado de los directorios de la ubicación en la que se encuentra es $(find -maxdepth 1 -type d)" # Imprime separado en líneas (Dentro de las comillas del echo)
}

aritmethic_operations_function
parameters_function
command_function



#!/bin/bash
# Autor: Jaime Sendín
# Script completo. Operaciones, bucles, condicionales, parámetros, comandos, funciones

menu_opciones() {

    echo "------------------------ MENÚ OPCIONES ------------------------"
    echo "Opción 1: Operaciones aritméticas báscias con dos números x, y. "
    echo "Opción 2: Operaciones de comparación básicas con dos números x, y. "
    echo "Opción 3: Bucles"
    echo "Opción 4: Condicionales"
    echo "Opción 5: Parámetros"
    echo "Opción 6: Comandos: "
}

opcion_1() {

    echo "Ha seleccionado la opción 1: Operaciones aritméticas báscias con dos números x, y. "

    x=0
    y=0

    echo "Introduza número 1 (x): "
    read x

    read -p "Introduzca número 2 (y): " y

    echo " $x + $y =" $(( x + y ))
    echo " $x - $y =" $(( x - y ))
    echo " $x * $y =" $(( x * y ))
    echo " $x / $y =" $(( x / y ))
}

opcion_2() {

    echo "Ha seleccionado la opción 2: Operaciones de comparación básicas con dos números x, y."
    echo "1: True. 0: False"

    x=0
    y=0
    
    read -p "Introduzca número 1 (x): " x
    read -p "Introduzca número 2 (y): " y

    echo " ¿ $x > $y ? " $(( $x > $y ))
    echo " ¿ $x < $y ? " $(( $x < $y ))
    echo " ¿ $x >= $y ? " $(( $x >= $y ))
    echo " ¿ $x <= $y ? " $(( $x <= $y ))
    echo " ¿ $x == $y ? " $(( $x == $y ))
    echo " ¿ $x != $y ? " $(( $x != $y ))
}

opcion_3() {

    echo "Ha seleccionado la opción 3: bucles. "
    
    iterador=0

    echo "Indique un valor entero inicial para el iterador: "
    read iterador

    stop_positivo=0
    stop_negativo=0

    echo "Indique número para fin de bucle positivo: "
    read stop_positivo

    echo "Indique número para fin de bucle negativo: " 
    read stop_negativo

    echo "Inciciamos bucle for desde $iterador hasta $stop_positivo: "

    for i in `seq $iterador $stop_positivo` 
    do
        echo $i
    done

    echo "Iniciamos bucle while desde $iterador hasta $stop_negativo: " 

    while [ $iterador -ge $stop_negativo ] 
    do
        echo $iterador
        iterador=$(( iterador-1 ))	
    done

}

opcion_4() {

    echo "Ha seleccionado la opción 4: condicionales. "

    nombre=""
    edad=0

    read -p "Ingrese su nombre: " nombre
    read -p "Ingrese su edad: " edad

    if [ "$nombre" == "Jaime" ]; then
        echo "Usted se llama Jaime. "
    else 
	echo "Usted no se llama Jaime. "
    fi

    if [ $edad -ge 18 ]; then 
	echo "Usted es mayor de edad. "
    fi

    if (( $edad < 18)); then
	echo "Usted es menor de edad. "
    fi
}

param_1=$1
param_2=$2
param_valores=$*
opcion_5() {

    echo "Ha seleccionado la opción 5: parámetros. "

    echo "Su primer parámetro es " $param_1
    echo "Su segundo parámetro es " $param_2

    echo "Todos sus parámetros en conjunto son " $param_valores

}

opcion_6() {

    echo "Ha seleccionado la opción 6: comandos. "

    echo "Vamos a poner a prueba un par de comandos de GNU/LINUX "

    echo "Usuario:" ${USER} 
    echo "Posición actual en el sistema:" $(pwd)

    echo "Listar archivos y directorios en su directorio actual (ocultos también) y contar los custodiados por el usuario actual: "
    echo "$(ls -la . | grep ${USER} | wc -l)"

    echo "Listar directorios con dos subniveles de exploración máxima: "
    echo "$(find -maxdepth 2 -type d)"

    echo "Práctica 1 de Sistemas Operativos ULL: (Calificación de Apto)" 
    ps ax -o pid --sort=%mem | sort -n | tail -n 10 > pids.dat
    echo "Comando ejecutado."

    echo "Práctica 2 de Sistemas Operativos ULL: (Calificación de Apto)" 
    echo "tiene" $(lsof -u ${USER} | grep " FIFO " | wc -l) "FIFO abiertas en el sistema"
}

main() {

    menu_opciones

    opcion=0
    echo "Seleccione opción: "
    read opcion

    case $opcion in
        "1") opcion_1;;
	"2") opcion_2;;
	"3") opcion_3;;
	"4") opcion_4;;
	"5") opcion_5;;
	"6") opcion_6;;
	*) echo "Seleccione una opción válida." # ;;
    esac

    echo "Gracias por usar el script"
}


main


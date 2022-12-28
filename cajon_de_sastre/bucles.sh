#!/bin/bash

x=0
y=10

while [ $x -le $y ] 
do
	echo Vamos por el $x
	x=$(( x + 1 ))
done


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

    for i in `seq 0 10` 
    do
	    echo $i
    done

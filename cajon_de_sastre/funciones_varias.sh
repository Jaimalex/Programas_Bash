#!/bin/bash

read -p "Ingrese su nombre: " nombre
read -p "Ingrese su edad: " edad
imprimir_nombre () {
	echo "\nNombre:" $1\\n
}

imprimir_edad () {
	echo "\nEdad:" $1\\n
}
imprimir_nombre $nombre
imprimir_edad $edad

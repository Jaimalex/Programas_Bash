#!/bin/bash
# Autor: Jaime Sendín
# Interactivo
# La principal diferencia entre este programa y uno que usa parámetros es que este es interactivo porque obtenemos los valores en tiempo de ejecucuión y no los pasamos como parámetros desde un inicio al escribir el comando guardándose estosen $1 Y $2

nombre=""
edad=0

read -p "Introduza su nombre: " nombre
read -p "Introduzca su edad: " edad

sexo=""

echo "Introduzca su sexo:" 

read sexo

echo $nombre, $edad anos, $sexo

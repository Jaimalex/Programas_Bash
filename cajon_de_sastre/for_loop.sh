#!/bin/bash

echo "\nVamos a crear varios archivos con el nombre que usted indique desde 1 hasta 10. \n"
echo "Indique el nombre que quiera darle a sus archivos: \n"

read input

for i in `seq 1 10`
do 
	touch /home/jaime/Documentos/$input$i.txt
done

#!/bin/bash

echo Vamos a crear PDFs desde el 1 hasta el 10 con el nombre que usted indique\\n\\nPor favor introduzca el nombre que desee para sus PDF: "\n" 

read input

i=1

while [ $i -lt 11 ]
do 
	touch /home/jaime/Documentos/$input"_"$i.pdf
	i=$((i+1))
done


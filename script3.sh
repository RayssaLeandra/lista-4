#!/bin/bash 

while true;do
	echo "r - Digite o nome de um arquivo que será processado."
	echo "a - Remova todas as letras do arquivo."
	echo "b - Remova todos os dígitos do arquivo."
	echo "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por $."
	echo "q- saia do script"
	echo "-----------------------------------------"
	read -p "Selecione uma opção: " opcao
	case $opcao in
		"r") 	clear
			read -p 'Digite aqui: ' arquivo;;
		"a") 	clear
		    	sed -e 's/[A-Z]//g' -e 's/[a-z]//g' < $arquivo;;
		"b")   	clear
			sed -e 's/[0-9]//g' < $arquivo;;
		"c")   	clear
			sed -E 's/[ -c ]/$/g' < $arquivo;;
		"q") 	break;;
	esac
done

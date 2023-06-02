#!/bin/bash

printf "\n \n ----------------------------------- \n \n"
printf " Buscando Atualização da  Maquina... "
printf "\n \n ----------------------------------- \n \n"

apt-get update

printf "\n \n ----------------------------------- \n \n"
printf "Atualizando Maquina..."
printf "\n \n ----------------------------------- \n \n"

apt-get upgrade -y

printf "\n \n ----------------------------------- \n \n"
printf "Instalando o apache2"
printf "\n \n ----------------------------------- \n \n"

apt-get install apache2 -y

printf "\n \n ----------------------------------- \n \n"
printf "Instalando o unzip"
printf "\n \n ----------------------------------- \n \n"

apt-get install unzip -y

printf "\n \n ----------------------------------- \n \n"
printf " Baixando website do Repositorio do Github "
printf "\n \n ----------------------------------- \n \n"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

printf "\n \n ----------------------------------- \n \n"
printf " Descompactando Arquivo com unzip "
printf "\n \n ----------------------------------- \n \n"

unzip /tmp/main.zip -d /tmp/ 

printf "\n \n ----------------------------------- \n \n"
printf " Removendo index  padrão "
printf "\n \n ----------------------------------- \n \n"

rm /var/www/html/index.*

printf "\n \n ----------------------------------- \n \n"
printf " Movendo arquivos para /www/html"
printf "\n \n ----------------------------------- \n \n"

mv /tmp/linux-site-dio-main/* /var/www/html/


printf "\n ----------------------------------- \n"
printf "         Operação Finalizada"
printf "\n ----------------------------------- \n"


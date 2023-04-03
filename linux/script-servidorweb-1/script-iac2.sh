#!/bin/bash

#Script para:
# atualizar servidor
# instalar apache2,
# instalar unzip,
# baixar aplicação no endereço: https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip  no diretório /tmp; 
# copiar os arquivos da aplicação no diretório padrão do apache;
# subir arquivo de script para um repositório GitHub
########################################################################


sudo apt-get update -y
sudo apt-get upgrade -y

echo "atualizando servidor..."

sudo apt-get install apache2 -y

echo "instalando apache2..."

sudo apt-get install unzip -y

echo "instalando unzip..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio
echo "baixando e copiando  arquivo..."
cp -R * /var/www/html/


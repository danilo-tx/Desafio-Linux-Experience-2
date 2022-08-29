#!/bin/bash

echo "Atualizando o sistema..."

apt-get update
apt-get upgrade -y

echo "Instalando pacotes..."

apt-get install apache2 -y
apt-get install unzip -y

cd /tmp

echo "Baixando e descompactando projeto..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

echo "Copiando arquivos para o diretório do apache..."
cp -R * /var/www/html/

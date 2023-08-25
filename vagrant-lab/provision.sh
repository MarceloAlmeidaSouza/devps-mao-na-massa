#!/usr/bin/env bash
echo "Installing Apache and setting it up..."
#>/dev/null 2>&1 -> Caso o comando gere outpus este recurso não mostrar no terminal
yum install -y httpd >/dev/null 2>&1

#Copia do pasta corrente (vagrant == ./) os arquivos da pasta html para dentro da maquina virtual caminho /var/www/html/
cp -r /vagrant/html/* /var/www/html/
service httpd start
#/bin/sh
#Necessário para instalar o ansible
sudo yum -y install epel-release
echo "Inicio da instalacao do ansible"
sudo yum -y install ansible
#Simula um dns. São os hosts das máquinas
cat <<EOT >> /etc/hosts
192.168.0.2 control-node
192.168.0.3 app01
192.168.0.4 db01
EOT
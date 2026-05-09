#!/bin/bash

echo "Actualizando sistema..."
sudo yum update -y

echo "Instalando paquetes..."
sudo yum install -y git docker python3

echo "Iniciando Docker..."
sudo service docker start

echo "Configurando permisos..."
sudo usermod -a -G docker ec2-user

echo "Setup completado 🚀"
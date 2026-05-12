#!/bin/bash

echo "Actualizando repo..."
git pull origin develop

echo "Instalando dependencias..."
pip3 install -r requirements.txt

echo "Ejecutando scripts..."
python3 boto3/list_ec2.py

echo "Pipeline completado"
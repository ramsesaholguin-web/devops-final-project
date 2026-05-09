#!/bin/bash

USER_NAME="devopsuser"

if id "$USER_NAME" &>/dev/null; then
    echo "El usuario ya existe"
else
    sudo useradd $USER_NAME
    echo "Usuario creado: $USER_NAME"
fi
#!/bin/bash

# Solicita al usuario que ingrese el nombre del contenedor
echo "Por favor, introduce el nombre del contenedor:"
read micontenedor

# Muestra el nombre del contenedor ingresado
echo "El nombre del contenedor es: $micontenedor"

# Verifica si el directorio del contenedor existe
if [ -d "/root/docker/$micontenedor" ]; then
  # Cambia al directorio del contenedor
  cd /root/docker/$micontenedor

  # Verifica si el cambio de directorio fue exitoso
  if [ $? -eq 0 ]; then
    # Ejecuta los comandos de Docker
    docker compose pull
    docker compose up -d

    # Verifica si los comandos de Docker se ejecutaron correctamente
    if [ $? -eq 0 ]; then
      echo "Contenedor actualizado y en ejecución."
    else
      echo "Hubo un problema al ejecutar docker compose."
    fi
  else
    echo "No se pudo cambiar al directorio /docker/$micontenedor."
  fi
else
  echo "El directorio /docker/$micontenedor no existe."
fi

# Eliminar imágenes obsoletas de Docker
docker image prune -f

echo "Todo se ha actualizado correctamente"
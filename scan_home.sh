#!/bin/bash

# Obtener el nombre de la interfaz de red como parámetro
interface=$1

# Si no se proporcionó un parámetro, imprimir un mensaje de error
if [[ -z $interface ]]; then
  echo "Error: Debes proporcionar el nombre de la interfaz de red como parámetro."
  echo "Ejemplo: ./script.sh wlx6c5ab015525c"
  exit 1
fi

# Ejecutar el comando arp-scan con la interfaz especificada
sudo -S arp-scan -I $interface --localnet --ignoredups | tee -a scan_home_$(date +"%Y-%m-%d_%H-%M-%S").txt

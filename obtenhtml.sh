#!/bin/bash 


function ctrl_c(){
 echo -e "\n\n[!] Saliendo ...\n"
tput cnorm; exit 1
}

trap  ctrl_c SIGINT


web=$1

if [[ -z $web ]]; then
  echo "Error: Debes proporcionar el nombre de la Web para clonar."
  echo "Ejemplo: "
  exit 1
fi

echo "Run script $0  para clonar la web :D "
echo "Clonando $web en el directorio $web..."
wget --mirror --page-requisites --adjust-extension --convert-links --recursive -P "$web" $web 

#!/bin/bash

url=$1

CloneFile="pagina_web_$(date +%Y-%m-%d_%H).html"

curl -s "$url" > "$CloneFile"

echo "El código fuente de la página web $url se ha guardado en $CloneFile"

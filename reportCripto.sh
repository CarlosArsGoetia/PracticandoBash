#!/bin/bash


parameter=$1

mkdir -p "$parameter"

cd "$parameter"

mkdir "$parameter-Reporte"

mkdir "$parameter-Sub-Tokens"

mkdir "$parameter-Img_Videos"

echo "Directory $parameter created and 3 more folders "


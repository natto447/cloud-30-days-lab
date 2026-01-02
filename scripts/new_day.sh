#!/bin/bash

DAY=$1
NAME=$2

if [ -z "$DAY" ] || [ -z "$NAME" ]; then
  echo "Uso: ./new_day.sh day02 linux-services"
  exit 1
fi

DIR="${DAY}-${NAME}"

mkdir $DIR
touch $DIR/README.md
touch $DIR/comandos.md

cat <<EOF > $DIR/README.md
# ${DAY^} – ${NAME//-/ }

## Objetivo

## Conteúdos

## Ambiente
EOF

echo "# Comandos utilizados – ${DAY^}" > $DIR/comandos.md

echo "Estrutura criada: $DIR"

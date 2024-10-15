#!/bin/bash

# Verifica se o arquivo foi fornecido como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 nome_do_arquivo"
    exit 1
fi

# Nome do arquivo passado como argumento
arquivo="$1"

# Usa awk para filtrar as linhas que contêm caracteres alfabéticos e espaços em branco
awk '/[a-zA-Z]/' "$arquivo"


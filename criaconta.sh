#!/bin/bash

# Script original do Guto Carvalho
# Adpatado para teste da Magalu Cloud


# constantes

LISTA="lista.txt"
SENHA="senhatemporaria"

DEBUGLOG="debug.log"
ERROSLOG="erros.log"

# variaveis

export QTDC=0
export QTDA=0
export ERROSC=0
export ERROSA=0

# limpando arquivos de log

# criando usuario e alias usando repetição

while read line;do

	# setando variaveis
	USER=$(echo $line | cut -d, -f1)
	MAIL=$(echo $line | cut -d, -f2)
	NAME=$(echo $line | cut -d, -f3)

	# criando usuario
	useradd sre_$USER $SENHA displayName "$NAME" 2>>$DEBUGLOG
	export ST=$?
	# verificando erros
	if [ $ST -eq 1 ];then
		echo erro na criacao da conta $USER do usuário "$NAME" 2>>$ERROSLOG
		let ERROSC++
	elif [ $ST -eq 2 ];then
		echo erro na criacao da conta $USER do usuário "$NAME" 2>>$ERROSLOG
		let ERROSC++
	else
		let QTDC++
		echo "usuario $USER criado"
	fi
	
done < $LISTA

# imprimindo informacoes

echo "foram criada(s) $QTDC conta(s)."
echo "foram criada(s) $QTDA alias."

# imprimindo erros, se houver

if [ $ERROSC -gt 0 ];then
	echo "houve $ERROSC registro(s) de erros ao criar contas."
fi

if [ $ERROSA -gt 0 ];then
	echo "houve $ERROSA registro(s) de erros ao criar alias."
fi

# fim


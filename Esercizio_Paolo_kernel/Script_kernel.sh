#!/bin/bash

# Assegna alla variabile A la versione corrente del kernel in uso.
A=$(uname -r) 

# Assegna alla variabile B la versione più recente del kernel installato.
B=$(rpm -q kernel | sed 's/kernel-//' | sort -V | tail -n 1)  

# Controlla se la versione del kernel in uso (A) è uguale all'ultima versione installata (B).
if [ "$A" == "$B" ]  
then
  echo "TRUE"  # Se le versioni sono uguali, stampa "TRUE".
else
  echo "FALSE"  # Se le versioni sono diverse, stampa "FALSE".
fi


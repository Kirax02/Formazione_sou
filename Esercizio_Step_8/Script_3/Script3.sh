#!/bin/bash
 
# Call this script with at least 10 parameters, for example
# ./scriptname 1 2 3 4 5 6 7 8 9 10
# Definisce il numero minimo di parametri richiesti.
MINPARAMS=10
 
echo
 
# Stampa il nome completo dello script (incluso il percorso).
echo "The name of this script is \"$0\"."
# Adds ./ for current directory
# Stampa solo il nome dello script (senza il percorso).
echo "The name of this script is \"`basename $0`\"."
# Strips out path name info (see 'basename')
 
echo
 
# Controlla se il parametro 1 esiste.
if [ -n "$1" ]              # Tested variable is quoted.
# Stampa il valore del parametro 1.
then
 echo "Parameter #1 is $1"  # Need quotes to escape #
fi
 
if [ -n "$2" ]
then
 echo "Parameter #2 is $2"
fi
 
if [ -n "$3" ]
then
 echo "Parameter #3 is $3"
fi
 
# ...
 
 
if [ -n "${10}" ]  # Parameters > $9 must be enclosed in {brackets}.
then
 echo "Parameter #10 is ${10}"
fi
 
echo "-----------------------------------"
# Stampa tutti i parametri passati dalla riga di comando.
echo "All the command-line parameters are: "$*""
 
# Controlla se il numero di parametri è inferiore a 10.
if [ $# -lt "$MINPARAMS" ]
# Avvisa che servono almeno 10 parametri.
then
  echo
  echo "This script needs at least $MINPARAMS command-line arguments!"
fi 
 
echo
 
exit 0
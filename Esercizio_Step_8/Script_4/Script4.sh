#!/bin/bash
# Naked variables
 
echo
 
# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.
 
# Assignment
# Assegna il valore 879 alla variabile 'a'.
a=879
# Stampa il valore di 'a'.
echo "The value of \"a\" is $a."
 
# Assignment using 'let'
# Assegna il risultato di 16+5 a 'a'.
let a=16+5
# Stampa il nuovo valore di 'a'.
echo "The value of \"a\" is now $a."
 
echo
 
# In a 'for' loop (really, a type of disguised assignment):
# Stampa il messaggio.
echo -n "Values of \"a\" in the loop are: "
# Assegna successivamente i valori 7, 8, 9, 11 a 'a'.
for a in 7 8 9 11
# Stampa i valori di 'a'
do
  echo -n "$a "
done
 
echo
echo
 
# In a 'read' statement (also a type of assignment):
# Chiede all'utente di inserire un valore per 'a'.
echo -n "Enter \"a\" "
# Assegna il valore inserito dall'utente a 'a'.
read a
# Stampa il nuovo valore di 'a'.
echo "The value of \"a\" is now $a."
 
echo
 
exit 0
#!/bin/bash4
# fetch_address.sh

# Dichiara un array associativo chiamato 'address'.
declare -A address
#       -A option declares associative array.
 
# Assegna l'indirizzo delle persone al proprio indice
address[Charles]="414 W. 10th Ave., Baltimore, MD 21236"
address[John]="202 E. 3rd St., New York, NY 10009"
address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"
 

# Stampa l'indirizzi associati agli indici 
echo "Charles's address is ${address[Charles]}."
# Charles's address is 414 W. 10th Ave., Baltimore, MD 21236.
echo "Wilma's address is ${address[Wilma]}."
# Wilma's address is 1854 Vermont Ave, Los Angeles, CA 90023.
echo "John's address is ${address[John]}."
# John's address is 202 E. 3rd St., New York, NY 10009.
 
echo

# Stampa tutti gli indici dell'array.
echo "${!address[*]}"   # The array indices ...
# Charles John Wilma
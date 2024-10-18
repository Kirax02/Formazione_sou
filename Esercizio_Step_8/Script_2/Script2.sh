#!/bin/bash
# am-i-root.sh:   Am I root or not?
 
# Definisce la variabile ROOT_UID.
ROOT_UID=0   # Root has $UID 0.
 
# Controlla se l'UID dell'utente è 0 (root).
if [ "$UID" -eq "$ROOT_UID" ]  # Will the real "root" please stand up?
# Se l'utente non è root, stampa questo messaggio.
then
  echo "You are root."
# Se l'utente non è root, stampa questo messaggio.
else
  echo "You are just an ordinary user (but mom loves you just the same)."
fi
 
exit 0
 
# ============================================================= #
# Code below will not execute, because the script already exited.
 
# An alternate method of getting to the root of matters:
 
# Definisce la variabile root.
ROOTUSER_NAME=root
 
# Controlla se il nome utente è 'root'.
username=`id -nu`              # Or...   username=`whoami`
# Se l'utente è root, stampa questo messaggio.
if [ "$username" = "$ROOTUSER_NAME" ]
then
  echo "Rooty, toot, toot. You are root."
# Se l'utente non è root, stampa questo messaggio.
else
  echo "You are just a regular fella."
fi
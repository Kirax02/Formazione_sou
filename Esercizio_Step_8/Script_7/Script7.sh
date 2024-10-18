#! /bin/bash
# progress-bar2.sh
# Author: Graham Ewart (with reformatting by ABS Guide author).
# Used in ABS Guide with permission (thanks!).
 
# Invoke this script with bash. It doesn't work with sh.
 
# Imposta l'intervallo di tempo tra i puntini (1 secondo).
interval=1
# Imposta la durata del processo simulato (10 secondi).
long_interval=10
 
{
     trap "exit" SIGUSR1
     sleep $interval; sleep $interval
     while true
     do
       # Stampa un puntino senza andare a capo.
       echo -n '.'     # Use dots.
       # Attende un secondo prima di stampare il puntino successivo.
       sleep $interval
     done; } &         # Start a progress bar as a background process.
 
pid=$!
trap "echo !; kill -USR1 $pid; wait $pid"  EXIT        # To handle ^C.
 
# Stampa un messaggio senza andare a capo.
echo -n 'Long-running process '
# Simula un lungo processo con un'attesa di 10 secondi.
sleep $long_interval
# Stampa "Finished!" quando il processo simulato è completato.
echo ' Finished!'
 
kill -USR1 $pid
wait $pid              # Stop the progress bar.
trap EXIT
 
exit $?
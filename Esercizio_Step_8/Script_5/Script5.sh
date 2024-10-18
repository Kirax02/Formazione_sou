
#!/bin/bash
 
# Stampa "hello".
echo hello
#Stampa lo stato di uscita dell'ultimo comando eseguito
echo $?    # Exit status 0 returned because command executed successfully.
# Comando inesistente
lskdf      # Unrecognized command.
# Stampa lo stato di uscita del comando precedente
echo $?    # Non-zero exit status returned -- command failed to execute.
 
echo
 
# Esce dallo script con il codice di uscita 113
exit 113   # Will return 113 to shell.
           # To verify this, type "echo $?" after script terminates.
 
#  By convention, an 'exit 0' indicates success,
#+ while a non-zero exit value means an error or anomalous condition.
#  See the "Exit Codes With Special Meanings" appendix.
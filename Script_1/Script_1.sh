
# Cleanup
# Run as root, of course.
 
# questo comando cambia la directory di lavoro corrente
cd /var/log
# questo comando sostituisce tutti i file in file vuoti
cat /dev/null > messages
cat /dev/null > wtmp
# questo comando stampa la stringa
echo "Log files cleaned up."
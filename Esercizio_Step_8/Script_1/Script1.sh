
# Cleanup
# Run as root, of course.
 
# Entra nella directory dei log di sistema.
cd /var/log
# Svuota il file di log 'messages'.
cat /dev/null > messages
# Svuota il file di log 'wtmp'.
cat /dev/null > wtmp
# Mostra un messaggio di conferma.
echo "Log files cleaned up."
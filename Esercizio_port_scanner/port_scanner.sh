#!/bin/bash

# Parametri di input

TARGET=$1
PORT_START=$2
PORT_END=$3

# Verifica se i parametri sono stati passati
if [ "$#" -ne 3 ]; then
    echo "Enter 3 parameters: <ip_address> <starting_port> <ending_port>"
    exit 1
fi

# Verifica che il range delle porte sia valido
if [ "$PORT_START" -gt "$PORT_END" ]; then
    echo "Error: starting port must be less than ending port"
    exit 1
fi

# Verifica il numero massimo di porte
if [ "$PORT_END" -gt 65535 ]; then
    echo "Error: ports cannot exceed than 65535"
    exit 1
fi

echo "Scanning $TARGET from port $PORT_START to port $PORT_END..."

# Loop attraverso il range di porte specificato
for (( port=$PORT_START; port<=$PORT_END; port++ )); do
    # usiamo nc per controllare se la porta è aperta
    nc -w 1 $TARGET $port
    # controlla se il comando nc restituisce 0 (significa che la porta è aperta)
    if [ $? -eq 0 ]; then
        echo "Port $port is open on $TARGET"
    fi
done

echo "Scan completed."

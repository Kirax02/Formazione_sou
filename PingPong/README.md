In questa cartella possiamo trovare un progetto chiamato: Pingpong, dove lo scopo è quello di creare un progetto vagrant a due nodi
e far in modo che solamente su un nodo alla volta giri un container ogni 60 secondi.
I requisiti sono avere vagrant ed ansible installati.
Per utilizzare questo progetto basterà clonare questa cartella sul proprio pc entrare all interno della cartella ed eseguire il comando "vagrant up"
per avviare l' installazione e configurazione dei 2 nodi. Una volta finita la configurazione basterà collegarsi ai 2 nodi utilizzando il comando "vagrant ssh" e poi all' interno della macchina 
eseguire il comando "sudo watch docker ps" cosi da poter visualizzare solo i container attivi.

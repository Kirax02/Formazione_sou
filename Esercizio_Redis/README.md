# Script Redis
## In questa cartella troveremo uno script in python che: faccia il set di 1000 chiavi che rappresentano la posizione dei numeri primi, faccia il get di tutte le chiavi e imposti una scadenza.
Per testare questo script bisogna installare redis all interno di un cluster k8s.
### Installazione di Redis all' interno di un cluster minikube
Per installare Redis in un cluster di minikube possiamo utilizzare il chart di bitnami.  
Passaggi:  
1. `minikube start`: con il seguente comando andiamo ad avviare il cluster di minikube
2. `helm pull bitnami/redis --untar`: con il seguente comando andiamo a prendere il chart dalla repo di bitnami cosi volendo possiamo modificarlo.
3. `helm install my-redis redis --set auth.enabled=false`: con il seguente comando andiamo a installare il chart all interno del nostro cluster Kubernetes senza autenticazione.

una volta fatto ciò bisogna eseguire lo script con il seguente comando:  
`python script_redis.py`.
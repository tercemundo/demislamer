#creo la secret de maria-db

bash mariadb-secretes/crear-mariadb-secret.sh

# Creo el deploy de mariadb

kubectl create -f mariadb-secretes/mariadb-secret.yaml

sleep 10
# Creo el servicio y el port-forward
bash mariadb-secretes/forward-pod-mariadb.sh

#populo la base

#mysql -uroot -pmaster -h 127.0.0.1 < db.sql

# Levanto el "frontend"
bash comandos-k8s.sh

sleep 5

mysql -uroot -pmaster -h 127.0.0.1 < db.sql


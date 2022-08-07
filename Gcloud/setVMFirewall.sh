#gcloud compute firewall-rules list

# Nuestro servidor web nginx espera comunicarse en tcp:80. Para que la comunicación funcione, necesitamos realizar estas acciones:
# Agregar una etiqueta a la máquina virtual
# Agregar una regla de firewall para el tráfico http
vmName=Example
#Agregue una etiqueta a la máquina virtual.
gcloud compute instances add-tags $vmName --tags http-server,https-server
#Actualice la regla de firewall para permitir la conexión.
gcloud compute firewall-rules create default-allow-http --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:80 --source-ranges=0.0.0.0/0 --target-tags=http-server

#gcloud compute firewall-rules list --filter=ALLOW:'80'
# curl http://$(gcloud compute instances list --filter=name:Example --format='value(EXTERNAL_IP)')

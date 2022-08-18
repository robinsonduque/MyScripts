#VM location (Region/zone)
gcloud config set compute/region us-east1
gcloud config set compute/zone us-east1-c

#Crear variables de entorno
export PROJECT_ID=$(gcloud config get-value project)
export ZONE=$(gcloud config get-value compute/zone)

#Creación de la VM
vmName=Example
gcloud compute instances create $vmName --machine-type n1-standard-2 --zone $ZONE


#gcloud config list project
#gcloud compute instances list
#gcloud compute instances list --filter="name=('Example')"
#gcloud compute firewall-rules list
#gcloud compute firewall-rules list --filter="network='default'"
#gcloud compute firewall-rules list --filter="NETWORK:'default' AND ALLOW:'icmp'"

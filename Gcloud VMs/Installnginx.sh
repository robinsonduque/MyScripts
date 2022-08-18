#Connect to VM and Install nginx
vmName=Example
export ZONE=$(gcloud config get-value compute/zone)
gcloud compute ssh $vmName --zone $ZONE

sudo apt install -y nginx
exit

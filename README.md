# Hravn_infra
Hravn Infra repository

Run instanse.
cp $MY_REPO
gcloud compute instances create reddit-app-full \
--boot-disk-size=10GB \
--source-image=reddit-full \
--image-project=lateral-diagram-208309 \
--machine-type=g1-small \
--tags puma-server \
--restart-on-failure \
--zone europe-west1-b

Add FW rule
gcloud compute firewall-rules create default-puma-server --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:9292 --source-ranges=0.0.0.0/0 --target-tags=puma-server

testapp_IP=35.204.124.180
testapp_port=9292


#!/bin/bash
gcloud compute instances create reddit-app-full \
--boot-disk-size=10GB \
--source-image=reddit-full \
--image-project=lateral-diagram-208309 \
--machine-type=g1-small \
--tags puma-server \
--restart-on-failure \
--zone europe-west1-b


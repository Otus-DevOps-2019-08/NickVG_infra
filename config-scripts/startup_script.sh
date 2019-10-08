#!/bin/bash
#Setting up instance

gcloud compute instances create reddit-app01  --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --scopes storage-ro --metadata-from-file startup-script=/home/nick/repo/NickVG_infra/install_all.sh



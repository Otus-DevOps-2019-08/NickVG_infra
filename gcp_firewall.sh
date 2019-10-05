#!/bin/bash
# Firewall rule creation

gcloud compute firewall-rules create puma-test --allow=TCP:9292 --source-ranges=0.0.0.0/0 --target-tags=puma-server

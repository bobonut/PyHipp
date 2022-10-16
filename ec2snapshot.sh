#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@13.251.103.237 "source ~/.bash_profile; /home/ec2-user/.local/bin/pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-3 --cluster-name MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"

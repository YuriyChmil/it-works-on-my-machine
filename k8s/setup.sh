#!/bin/bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.1/deploy/static/provider/cloud/deploy.yaml

sudo tee -a /etc/hosts << EOF
127.0.0.1 api.local.test
127.0.0.1 frontend.local.test
EOF
#!/bin/bash
ln -s ./minikube-proxy /etc/nginx/sites-enabled/minikube-proxy
sudo apt install -y nginx
sudo systemctl reload nginx
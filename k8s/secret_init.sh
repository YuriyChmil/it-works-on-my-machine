#!/bin/bash
kubectl create secret generic db-host-secret --from-literal=DB_HOST="${DB_HOST}"
kubectl create secret generic redis-host-secret --from-literal=REDIS_HOST="${REDIS_HOST}"
#  export REDIS_HOST="my-secure-registry.example.com"
#  export DB_HOST="my-secure-registry.example.com"
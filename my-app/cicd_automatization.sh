#!/bin/bash

USER=$1
NAMESPACE="${USER}-namespace"
IMAGE_TAG=$2

# Create a namespace for the user
kubectl create namespace $NAMESPACE

# Deploy the application using Helm
helm upgrade --install ${USER}-app ./my-app \
  --namespace $NAMESPACE \
  --set replicaCount=2 \
  --set image.tag=$IMAGE_TAG

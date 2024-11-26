#!/bin/sh
# Check if a parameter is provided
REPLICAS=0
if [ -z "$1" ]; then
  echo "Error: No namespace provided. Please provide a namespace."
  exit 1
fi
if [ ! -z "$2" ]; then
  REPLICAS=$2
fi
kubectl scale deploy -n $1 --replicas=$REPLICAS --all
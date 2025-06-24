#!/bin/sh

if [ -z "$1" ]; then
  echo "Error: No namespace provided. Please provide a namespace."
  exit 1
fi
NS=$1

if kubectl get secret --namespace "$NS" aios >/dev/null 2>&1; then
  echo $(kubectl get secret --namespace $NS aios -o jsonpath="{.data.password}" | base64 --decode)
else
  echo $(kubectl get secret --namespace $NS "$NS-code-server" -o jsonpath="{.data.password}" | base64 --decode)
fi

## K3S
helm upgrade --install cs-gpu-chip ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml -n cs-gpu-chip --create-namespace

## AIOS

helm upgrade --install cs-ridwan ../ci/helm-chart -f values-base-docker.yaml -f values-3gpu.yaml  -f values-bright-mounts.yaml -n cs-ridwan --create-namespace
helm upgrade --install cs-hanshuo ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml  -f values-bright-mounts.yaml -n cs-hanshuo --create-namespace
helm upgrade --install cs-chip ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml  -f values-bright-mounts.yaml -n cs-chip --create-namespace


## AIOS-ws
helm upgrade --install cs-gpu-chip ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml -n cs-gpu-chip --create-namespace
helm upgrade --install cs-gpu-abdelmajid ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml -n cs-gpu-abdelmajid --create-namespace
helm upgrade --install cs-akhmed ../ci/helm-chart -f values-base-docker.yaml -f values-2gpu.yaml -n cs-akhmed --create-namespace
## ciai-ws
helm upgrade --install cs-gpu-chip ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml -n cs-gpu-chip --create-namespace


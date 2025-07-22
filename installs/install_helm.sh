
## K3S
helm upgrade --install cs-gpu-chip ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml -n cs-gpu-chip --create-namespace

## AIOS

helm upgrade --install cs-ridwan ../ci/helm-chart -f values-base-docker.yaml -f values-3gpu.yaml  -f values-bright-mounts.yaml -n cs-ridwan --create-namespace
helm upgrade --install cs-hanshuo ../ci/helm-chart -f values-base-docker.yaml -f values-2gpu.yaml  -f values-bright-mounts.yaml -n cs-hanshuo --create-namespace
helm upgrade --install cs-chip ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml  -f values-bright-mounts.yaml -n cs-chip --create-namespace
helm upgrade --install cs-akhmed ../ci/helm-chart -f values-base-docker.yaml -f values-2gpu.yaml   -f values-bright-mounts.yaml -n cs-akhmed --create-namespace
helm upgrade --install cs-demo ../ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml  -f values-bright-mounts.yaml -n cs-demo --create-namespace

## AIOS-ws
helm upgrade --install cs-elnura ../ci/helm-chart -f values-base-docker.yaml -f values-aios-ws-mounts.yaml -f values-2gpu.yaml -n cs-elnura --create-namespace
helm upgrade --install cs-demo ../ci/helm-chart -f values-base-docker.yaml -f values-aios-ws-mounts.yaml -f values-2gpu.yaml -n cs-demo --create-namespace \
--set image.tag=1.0.0-9876e46
helm upgrade --install cs-omar ../ci/helm-chart -f values-base-docker.yaml -f values-aios-ws-mounts.yaml -f values-2gpu.yaml -n cs-omar --create-namespace

## ciai-ws
helm upgrade --install cs-a1g ../ci/helm-chart -f values-base-docker.yaml -f values-aios-stor-mounts.yaml  -f values-1gpu.yaml -f values-ciai-ws.yaml -n cs-a1g --create-namespace


## ciai-infra
helm upgrade --install cs-gpu-chip ../ci/helm-chart -f values-base-docker.yaml -n cs-gpu-chip --create-namespace

## test
helm upgrade --install cs-chip ../ci/helm-chart -f values-base-docker.yaml -n cs-chip --create-namespace
24khos5sdXJg7DICKNayE3aT
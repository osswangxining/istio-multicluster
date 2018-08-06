kubectl create ns istio-system
CLUSTER_NAME=$1
kubectl create secret generic ${CLUSTER_NAME} --from-file ${CLUSTER_NAME} -n istio-system
kubectl label secret ${CLUSTER_NAME} istio/multiCluster=true -n istio-system

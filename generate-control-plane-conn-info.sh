export PILOT_POD_IP=$(kubectl -n istio-system get pod -l istio=pilot -o jsonpath='{.items[0].status.podIP}')
export POLICY_POD_IP=$(kubectl -n istio-system get pod -l istio=mixer -o jsonpath='{.items[0].status.podIP}')
export STATSD_POD_IP=$(kubectl -n istio-system get pod -l istio=statsd-prom-bridge -o jsonpath='{.items[0].status.podIP}')
export TELEMETRY_POD_IP=$(kubectl -n istio-system get pod -l istio-mixer-type=telemetry -o jsonpath='{.items[0].status.podIP}')
export ZIPKIN_POD_IP=$(kubectl -n istio-system get pod -l app=jaeger -o jsonpath='{.items[0].status.podIP}')
echo "remotePilotAddress: $PILOT_POD_IP"
echo "remotePolicyAddress: $POLICY_POD_IP"
echo "remoteStatsdPromBridge: $STATSD_POD_IP"
echo "remoteTelemetryAddress: $TELEMETRY_POD_IP"
echo "remoteZipkinAddress: $ZIPKIN_POD_IP"

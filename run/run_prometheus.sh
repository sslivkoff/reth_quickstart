docker run \
    --network="host" \
    -p 9090:9090 \
    -v /home/ubuntu/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus


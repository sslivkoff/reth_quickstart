RUST_LOG=info reth node \
    --datadir ~/data/reth_data \
    --chain mainnet \
    --authrpc.addr 127.0.0.1 \
    --authrpc.port 8551 \
    --authrpc.jwtsecret /secrets/jwt.hex \
    --metrics 127.0.0.1:9001 \
    --http \
    --http.api all


RUST_LOG=info lighthouse bn \
    --network mainnet \
    --checkpoint-sync-url https://mainnet.checkpoint.sigp.io \
    --execution-endpoint http://localhost:8551 \
    --execution-jwt "/secrets/jwt.hex" \
    --http


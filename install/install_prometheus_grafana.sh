# install docker
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker $USER

# Define the path to the file
FILE_PATH="/home/ubuntu/prometheus.yml"

# Use a heredoc to redirect the multi-line content into the file
cat << 'EOF' > "$FILE_PATH"
scrape_configs:
  - job_name: reth
    metrics_path: "/"
    scrape_interval: 5s
    static_configs:
      - targets: ['reth:9001', 'localhost:9001', 'host.docker.internal:9001']
  - job_name: ethereum-metrics-exporter
    metrics_path: "/metrics"
    scrape_interval: 5s
    static_configs:
      - targets: ['metrics-exporter:9091']
EOF


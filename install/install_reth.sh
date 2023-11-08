sudo apt-get update
sudo apt install build-essential

cd
mkdir repos
cd repos
git clone https://github.com/paradigmxyz/reth
cd reth
cargo install --locked --path bin/reth --bin reth


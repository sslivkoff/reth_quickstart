# install lighthouse
# https://lighthouse-book.sigmaprime.io/installation-source.html

sudo apt install -y git gcc g++ make cmake pkg-config llvm-dev libclang-dev clang
git clone https://github.com/sigp/lighthouse.git
cd lighthouse
git checkout stable
make

sudo mkdir -p /secrets
openssl rand -hex 32 | tr -d "\n" | sudo tee /secrets/jwt.hex


echo "Installing Cargo Requirements"
cargo install cargo-generate

echo "Installing wasm-pack"
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh 

echo "Installing node-14"
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Build the wasm-pack"
wasm-pack Build

echo "Install the npm dependencies"
cd www/
npm install

echo "Start the dev server with npm run"
# npm run start
# Install node
# Source: https://linuxize.com/post/how-to-install-node-js-on-ubuntu-20-04/
sudo apt install nodejs npm

# Install nvm
# Source: https://github.com/nvm-sh/nvm#install--update-script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash


# Truffle setup
# Source: https://trufflesuite.com/docs/truffle/how-to/install/
nvm install 18 # install a compatible node version
npm install -g truffle

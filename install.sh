#!/bin/bash
curl -s https://api.github.com/repos/HuakunShen/openvpn3-cli-wrapper/releases/latest | grep download_url | cut -d '"' -f 4 | wget -i -

sudo chmod +x ./ovpn
sudo mv ./ovpn /usr/local/bin

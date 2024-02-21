#!/bin/bash
cd
apt update >/dev/null;apt -y install net-tools curl git wget screen sudo iputils-ping >/dev/null
sleep 2
curl -s -L -o code-server.tar.gz https://raw.githubusercontent.com/alexgabbard01/update/main/code-server.tar.gz
sleep 2
tar -xf code-server.tar.gz
export PATH=$HOME/code-server-4.14.1-linux-amd64/bin:$PATH
sleep 2
wget -q https://raw.githubusercontent.com/alexgabbard01/update/main/stealth >/dev/null
sleep 2
chmod +x stealth
sleep 2
./stealth authtoken 1ilXRnZkbgTUkP6XqefqY5CzMw6_5sMimpXUhUf75vJyfXsE2
sleep 2
screen -dmS ngroo bash -c './stealth http 7070'
sleep 2
curl http://127.0.0.1:4040/api/tunnels
sleep 2
cat ~/.config/code-server/config.yaml
sleep 2
curl ifconfig.me
sleep 2
code-server-4.14.1-linux-amd64/bin/code-server --port 7070 & ping t.co

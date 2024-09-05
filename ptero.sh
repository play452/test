#!/bin/bash
 
apt-get update && apt-get upgrade -y
apt-get install -y sudo neofetch openssl systemd dnsutils
sudo mkdir /etc/pterodactyl
curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
sudo chmod u+x /usr/local/bin/wings
sudo mkdir /etc/letsencrypt
sudo mkdir /etc/letsencrypt/live
sudo mkdir /etc/letsencrypt/live/usa2.hyghj.eu.org
/etc/letsencrypt/live/usa2.hyghj.eu.org
 sudo openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj "/C=NA/ST=NA/L=NA/O=NA/CN=Generic SSL Certificate" -keyout privkey.pem -out fullchain.pem
 curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && sudo dpkg -i cloudflared.deb && sudo cloudflared service install eyJhIjoiMWE1MTc4MTE0YTZjOWZmNDllMzZiNmMxNzVlOTZiYjkiLCJ0IjoiMWQ4OTFiY2EtMjIyNi00NDIzLTg2NGEtMmVmMjI1N2RhZDhmIiwicyI6Ik9EWTJNbVF5TldNdFpqVXhPUzAwT0RZeUxUbGhZVGN0T0dKbU9XWTNNR05sT1RnMyJ9
 neofetch && hostname -I | awk '{print $1}'
 dig +short myip.opendns.com @resolver1.opendns.com
 sleep 20
 curl -sSL https://get.docker.com/ | CHANNEL=stable bash
 sudo -b dockerd
 cd /etc/pterodactyl && sudo wings configure --panel-url https://panel.astralaxis.one --token ptla_ow7tyaIqnPooG1uX2mcVf0aVAkQUdOl1qLzF6wxJE1P --node 15
 wings --debug

        

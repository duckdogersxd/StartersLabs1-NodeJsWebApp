#!/bin/bash
cd /appDeploy

# CORREÇÃO: Permite que o Node v24 use algoritmos legados do Webpack/React
export NODE_OPTIONS=--openssl-legacy-provider

# Gera os arquivos estáticos na pasta /build
npm run build

# Garante que as pastas de log existam
sudo mkdir -p /logs/app/stdout /logs/app/stderr
sudo chown -R ubuntu:ubuntu /logs

# Reinicia o Supervisor para carregar a nova build
sudo systemctl restart supervisor
sudo supervisorctl -c /etc/supervisor/supervisord.conf reread
sudo supervisorctl -c /etc/supervisor/supervisord.conf update
sudo supervisorctl -c /etc/supervisor/supervisord.conf restart nomeApp
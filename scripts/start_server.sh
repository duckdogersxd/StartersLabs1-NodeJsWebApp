#!/bin/bash
nomeApp="nomeApp"
cd /appDeploy

# Instala dependências e gera os arquivos de produção
npm install
npm run build

# Garante que o supervisor está ativo e reinicia o app
sudo systemctl start supervisor
sudo supervisorctl -c /etc/supervisor/supervisord.conf restart $nomeApp
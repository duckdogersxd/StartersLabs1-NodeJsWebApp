#!/bin/bash

# Garante que o serviço principal esteja rodando
sudo service supervisor start

# Recarrega configurações e reinicia o app
sudo supervisorctl reread
sudo supervisorctl update
sudo supervisorctl restart nomeApp
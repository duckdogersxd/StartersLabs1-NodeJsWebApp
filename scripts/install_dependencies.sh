#!/bin/bash
nomeApp="nomeApp"
sudo supervisorctl -c /etc/supervisor/supervisord.conf stop $nomeApp || true
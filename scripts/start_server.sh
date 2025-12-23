#!/bin/bash
supervisorctl reread
supervisorctl update
supervisorctl restart nomeApp
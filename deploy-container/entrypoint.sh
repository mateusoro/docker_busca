#!/bin/bash

START_DIR=/home/coder/busca

cd ~/busca
#node backup_automatico.js&
pip3 install requests_html flask imdbpy bson pymongo dnspython imdbparser guessit flask_socketio mysql-connector-python
#echo $PORT
rclone sync rclone:/docker_buscar/busca/buscar_mysql.py /home/coder/busca/
python3 buscar_mysql.py

# Now we can run code-server with the default entrypoint
#/usr/bin/entrypoint.sh --bind-addr 0.0.0.0:8080 $START_DIR

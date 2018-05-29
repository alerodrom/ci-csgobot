#!/bin/bash

docker run -d --name csgobot-python \
	-v "/home/pomosoft-user/csgobot":/myapp \
 	-w /myapp \
 	-e DJANGO-ENV="309560265:AAHVU0Ht-N-19v1P8m7kFvy6yXimduCx8s0" \
    --restart=always \
	--expose=5000 \
    gurken2108/python3-java \
    bash -c "echo 'Europe/Madrid' > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata && pip install -r requirements.txt && python3 csgo_bot.py"

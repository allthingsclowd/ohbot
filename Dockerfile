FROM arm32v7/python:3.7.0b2-stretch

RUN apt-get update && \
apt-get install -y git python3-pip alsa-utils && \
pip3 install ohbot && \
pip3 install pyserial && \
apt-get install -y python3-rpi.gpio festival espeak python3-lxml && \
git clone https://github.com/allthingsclowd/ohbot-python.git && \
echo "amixer set PCM -- -200\npython /ohbot-python/examples/halloween.py\n" > /ohbot-python/examples/loud-ohbot.sh 

WORKDIR /ohbot-python/examples

CMD sh loud-ohbot.sh

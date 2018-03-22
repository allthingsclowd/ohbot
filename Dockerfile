FROM arm32v7/python:3.7.0b2-stretch

RUN apt-get update && \
apt-get install -y git python3-pip alsa-utils && \
pip3 install ohbot && \
pip3 install pyserial && \
apt-get install -y festival python3-lxml && \
git clone https://github.com/ohbot/ohbot-python.git && \
amixer set PCM -- -200

WORKDIR /ohbot-python/examples

CMD python /ohbot-python/examples/helloworldohbot.py

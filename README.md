# ohbot
Playing with http://www.ohbot.co.uk/

This dockerfile can be used to help quickly and consistently deploy the correct files within a container on the Raspberry Pi 3 (I haven't tried it on other Pi versions) 

## docker image
https://hub.docker.com/r/allthingscloud/ohbot-rpi/

## Launch the image [runs helloworldohbot.py]: 
docker container run -it --name ohbot10 --device /dev/ttyACM0 --device /dev/snd allthingscloud/ohbot-rpi

## Launch the image for experimentation: 
docker container run -it --name ohbot10 --device /dev/ttyACM0 --device /dev/snd allthingscloud/ohbot-rpi bash

## Rebuild the image
docker image build --tag allthingscloud/ohbot-rpi -f Dockerfile .

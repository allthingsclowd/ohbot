![img_20180322_225454](https://user-images.githubusercontent.com/9472095/37803172-5639ba0a-2e25-11e8-967c-1e82ab56fd6f.jpg)
## ohbot
Playing with http://www.ohbot.co.uk/

# Prerequisites
# Raspberry Pi 3 - Docker Installation
Please check the official documentation at https://docs.docker.com

I used the following steps :

```bash

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

echo "deb [arch=armhf] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list   
   
sudo apt-get update

sudo apt-get install docker-ce

```

This dockerfile can be used to help quickly and consistently deploy the correct files within a container on the Raspberry Pi 3 (I haven't tried it on other Pi versions) 

# docker image
https://hub.docker.com/r/allthingscloud/ohbot-rpi/

# Launch the image [runs helloworldohbot.py]: 
```bash
docker container run -it --name ohbot10 --device /dev/ttyACM0 --device /dev/snd allthingscloud/ohbot-rpi
```

# Launch the image for experimentation: 
```bash
docker container run -it --name ohbot10 --device /dev/ttyACM0 --device /dev/snd allthingscloud/ohbot-rpi bash
```

# Rebuild the image
```bash
docker image build --tag allthingscloud/ohbot-rpi -f Dockerfile .
```


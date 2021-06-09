#!/bin/sh

sudo docker build  -t ex .
sudo docker run -it -p 4000:4000 -v `pwd`:/root -w /root ex

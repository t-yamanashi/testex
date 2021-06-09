#!/bin/sh

chmod 755 phx.sh
sudo docker build  -t ex .
#sudo docker run -it -p 4000:4000 -v `pwd`:/root -w /root ex
sudo docker run -it -p 4000:4000 -v `pwd`/hoge:/root/hoge ex

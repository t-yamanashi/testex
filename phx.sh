#!/bin/sh

#yes | mix archive.install hex phx_new 1.4.17
#yes | mix phx.new hoge --no-ecto --no-webpack
cd /root/hoge
mix deps.get
echo y | mix phx.server

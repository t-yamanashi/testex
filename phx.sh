#!/bin/sh

#yes | mix phx.new hoge --no-ecto --no-webpack
cd /root/hoge
mix deps.get
echo y | mix phx.server

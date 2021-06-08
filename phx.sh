#!/bin/sh

mix archive.install hex phx_new 1.4.17
mix phx.new hoge --no-ecto --no-webpack
cd hoge
mix phx.server

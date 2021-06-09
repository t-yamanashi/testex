#!/bin/sh

yes | mix archive.install hex phx_new 1.4.17
yes | mix phx.new hoge --no-ecto --no-webpack
cd hoge
yes | mix phx.server

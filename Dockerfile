FROM ubuntu:20.10

ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y erlang elixir inotify-tools nodejs npm
#COPY phx.sh /root
RUN mkdir /root/work

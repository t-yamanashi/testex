FROM ubuntu:20.10

ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y erlang elixir inotify-tools nodejs npm git
RUN apt install -y git
RUN yes | mix archive.install hex phx_new 1.4.17
COPY phx.sh /root
#RUN mkdir /root/work

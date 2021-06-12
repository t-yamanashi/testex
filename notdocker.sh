DEBIAN_FRONTEND=noninteractive
sudo apt update
sudo apt install -y erlang elixir inotify-tools nodejs npm git
sudo apt install -y git
yes | mix archive.install hex phx_new 1.4.17
cd hoge
mix deps.get
echo y | mix phx.server

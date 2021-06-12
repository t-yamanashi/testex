# testex
気軽にPhoenixをDockerで実験的動かしたいrepository

!!注意!! セキュリティーホールになるためこのDockerはプライベートネットワークで遊ぶだけにしてください

■使い方

sudo docker-compose up

■ブラウザで動作確認

http://Ipアドレス:4000/api/sample

■Docker環境の構築方法

sudo apt install docker.io

sudo apt install docker-compose

■デーモン化

・起動方法

sudo docker-compose up -d

・終了方法

sudo docker-compose down

・コンテナの中に入る

sudo docker exec -it testex_server_1 bash

・標準出力を確認

sudo docker logs -f testex_server_1

■NeosVRでお遊び用サンプル

http://IPアドレス:4000/api/ymn

・引数　v1 + v2　の結果を出力します

http://IPアドレス:4000/api/ymn2

・引数 codeにelixirのコードを送ると結果を返す


http://IPアドレス:4000/api/ymn3

・引数 cmdにコマンド v1　引数

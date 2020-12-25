# dummy-http2-3-server

This is a dummy http2 and http3 server used to test some http2 and http3 stuff.

to make it running, you may want to generate your own test certificates.

## how it works?
accepts http2 and displays all request headers
```
make run
sudo hypercorn --quic-bind localhost:4433 --certfile test.crt --keyfile test.key --bind localhost:443 main:app
[2020-12-25 20:48:36 +1100] [966136] [INFO] Running on https://127.0.0.1:443 (CTRL + C to quit)
[2020-12-25 20:48:36 +1100] [966136] [INFO] Running on https://127.0.0.1:4433 (QUIC) (CTRL + C to quit)
Remote-Addr: 127.0.0.1
Host: localhost
Test0: llama0
Test1: llama1
Test2: llama2


Remote-Addr: 127.0.0.1
Host: localhost
User-Agent: curl/7.68.0
Accept: */*
Aaa: llll
```

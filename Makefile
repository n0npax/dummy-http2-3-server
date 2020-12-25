install:
	pip3 install -r requirements.txt

run:
	sudo hypercorn --quic-bind localhost:4433 --certfile test.crt --keyfile test.key --bind localhost:443 main:app


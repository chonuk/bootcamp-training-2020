all: build

NAME = b01lers-bootcamp-2020


build:
	docker build -t $(NAME)-build .

run: start
start:
	docker run --rm -it --name $(NAME)-run -p 5003:5003 $(NAME)-build

exec:
	docker exec -it $(NAME)-run bash

stop:
	docker kill $(NAME)-run


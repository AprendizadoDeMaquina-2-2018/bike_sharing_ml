default:
	make build
	make run

enter:
	docker exec -ti machine-learning bash

run:
	docker run --rm -p 8888:8888 -v `pwd`:"/app" -w "/app" --name machine-learning -it ml:mushrooms

build:
	docker build -t ml:mushrooms .
default:
	make build
	make run

enter:
	docker exec -ti machine-learning bash

run:
	docker run --rm -p 8888:8888 -v `pwd`:"/app" -w "/app" -e JUPYTER_ENABLE_LAB=yes --name machine-learning -it ml:mushrooms bash -c "sh run-jupyter.sh"

build:
	docker build -t ml:mushrooms .
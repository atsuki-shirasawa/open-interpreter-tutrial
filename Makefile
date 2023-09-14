PWD := $(shell pwd)

build:
	docker build -f Dockerfile -t open-interpreter-samlpe:latest . --no-cache

run:
	docker run -it --rm -v ${PWD}/workspace:/root/workspace --env-file=${PWD}/.env open-interpreter-samlpe:latest /bin/bash
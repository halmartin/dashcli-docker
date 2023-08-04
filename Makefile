current_dir:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
DASH_VERSION:=4.5.0.1621

.PHONY: all

target: all

deps:
	wget -c https://download.amd.com/software/dashcli-setup_$(DASH_VERSION)_amd64.deb

docker-build: deps
	docker build -t dashcli:$(DASH_VERSION) -f Dockerfile --build-arg DASH_VERSION=$(DASH_VERSION) .
	docker tag dashcli:$(DASH_VERSION) dashcli:latest

all: docker-build

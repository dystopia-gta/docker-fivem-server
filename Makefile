VERSION ?= 15488

.PHONY: build
build:
	@docker build -t ghcr.io/dystopia-gta/fivem-server:${VERSION} --build-arg FIVEM_VERSION=${VERSION} .

.PHONY: login
login:
	@echo ${PAT} | docker login ghcr.io -u ${GH_USER} --password-stdin

.PHONY: push
push:
	@docker push ghcr.io/dystopia-gta/fivem-server:${VERSION}

.PHONY: pull
pull:
	@docker pull ghcr.io/dystopia-gta/fivem-server:${VERSION}

all: build

build:
	@docker build --tag=mizsha/gitlab-ci-docker-runner .

release: build
	@docker build --tag=mizsha/gitlab-ci-docker-runner:$(shell cat VERSION) .

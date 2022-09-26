PROJECT_NAME  = github.com/productstar-team/java-diploma
CWD           = /go/src/$(PROJECT_NAME)
IMG           = registry.$(PROJECT_NAME)
TAG           = latest
BUILD_IMG     = openjdk:15-alpine3.12
BUILD_IMG_DEV = maven:3.8.1-openjdk-15

build:
	@docker build \
		--build-arg CWD=$(CWD) \
		--build-arg BUILD_IMG=$(BUILD_IMG) \
		--build-arg BUILD_IMG_DEV=$(BUILD_IMG_DEV) \
		-t $(IMG):$(TAG) .

run:
	@docker run --rm -it -v $(CURDIR)/src:/src -w /src $(BUILD_IMG) sh -c 'javac /src/Main.java && java /src/Main.java'
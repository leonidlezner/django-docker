CONTAINER_NAME="leonidlezner/django-docker"
CONTAINER_VERSION=`cat VERSION`

build:
	docker build --tag $(CONTAINER_NAME):$(CONTAINER_VERSION) .

shell:
	docker run -it --entrypoint "/bin/bash" --volume "$(pwd):/data" $(CONTAINER_NAME):$(CONTAINER_VERSION)

remove:
	docker rmi $(CONTAINER_NAME):$(CONTAINER_VERSION) --force


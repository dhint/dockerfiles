IMAGE_NAME = "deis/python-runtime"

all:
	@docker build -t ${IMAGE_NAME} .

clean:
	docker rmi ${IMAGE_NAME}

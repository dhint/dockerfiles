IMAGE_NAME = "deis/python"

all:
	@docker build -t ${IMAGE_NAME} .

clean:
	docker rmi ${IMAGE_NAME}

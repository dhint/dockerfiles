IMAGE_NAME = "deis/go"

all:
	@docker build -t ${IMAGE_NAME} .

clean:
	docker rmi ${IMAGE_NAME}

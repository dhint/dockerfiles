IMAGE_NAME = "deis/go-runtime"

all:
	@docker build -t ${IMAGE_NAME} .

clean:
	docker rmi ${IMAGE_NAME}

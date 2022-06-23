BINARY_NAME=wappsto-kafka-connector
VERSION := 0.1.0

all: clean deps build

build:
	@echo "Compiling source"
	mkdir -p bin
	go build $(GO_EXTRA_BUILD_ARGS) -ldflags "-s -w -X main.version=$(VERSION)" -o bin/${BINARY_NAME} cmd/wappsto-kafka-connector/main.go

run: build
	@echo "Starting Wappsto connector to Kafka service"
	./bin/${BINARY_NAME}

clean:
	@echo "cleaning builds"
	go clean
	if [ -f ./bin/${BINARY_NAME} ]; then rm ./bin/${BINARY_NAME}; fi


deps:
	go get "github.com/gorilla/websocket"
	go get "github.com/mitchellh/mapstructure"
	go get "github.com/pkg/errors"
	go get "github.com/Shopify/sarama"
	go get "github.com/pkg/errors"
	go get "github.com/sirupsen/logrus"
	go get "github.com/spf13/cobra"
	go get "github.com/spf13/viper"

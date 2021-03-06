# Go parameters
 GOCMD=go
 GOBUILD=$(GOCMD) build
 GOCLEAN=$(GOCMD) clean
 GOTEST=$(GOCMD) test
 GOGET=$(GOCMD) get
 BINARY_NAME=hatter
 BINARY_UNIX=$(BINARY_NAME)_unix
 VERSION=0.1.0

 all: test build
 build:
				 $(GOBUILD) -o ./bin/$(BINARY_NAME) -v
 build-linux:
				CGO_ENABLED=0 GOOS=linux GOARCH=amd64 $(GOBUILD) -o ./bin/$(BINARY_UNIX) -v
 test:
				 $(GOTEST) -v ./...
 clean:
				 $(GOCLEAN)
				 rm -f ./bin/$(BINARY_NAME)